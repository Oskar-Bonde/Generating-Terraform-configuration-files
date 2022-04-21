import json
from lib2to3.pgen2 import token
import multiprocessing
import os
from random import randrange
import re
from collections import defaultdict

import torch
from datasets import load_dataset, load_metric, Dataset
from torch.utils.data import IterableDataset
from torch.utils.data.dataloader import DataLoader
from tqdm import tqdm

import transformers
from accelerate import Accelerator
from accelerate.utils import set_seed
from arguments import HumanEvalArguments
from transformers import AutoModelForCausalLM, AutoTokenizer, HfArgumentParser, StoppingCriteria, StoppingCriteriaList


EOF_STRINGS = ["\n}\n"]

def dataset_dict(provider='aws'):
    path = f"data/{provider}/human-txt"
    context_path = f"data/context-{provider}.txt"
    context_file = open(context_path, "r")
    context = context_file.read()
    task_name = {}
    data_list = []
    n_tasks = 0
    for filename in sorted(os.listdir(path)):
        with open(os.path.join(path, filename), 'r') as f:
            prompts = []
            solutions = []
            for line in f.readlines():
                if line[0] == "#":
                    prompts.append(line)
                    solutions.append("")
                else: 
                    solutions[-1] = solutions[-1] + line
            
            prompts[0] = context + prompts[0]
            data_list.append(prompts)
            task_name[n_tasks] = filename[:-4]
            n_tasks += 1
    print(n_tasks, ' tasks')
    return data_list, task_name

class EndOfFunctionCriteria(StoppingCriteria):
    """Custom `StoppingCriteria` which checks if all generated functions in the batch are completed."""

    def __init__(self, start_length, eof_strings, tokenizer):
        self.start_length = start_length
        self.eof_strings = eof_strings
        self.tokenizer = tokenizer

    def __call__(self, input_ids, scores, **kwargs):
        """Returns true if all generated sequences contain any of the end-of-function strings."""
        decoded_generations = self.tokenizer.batch_decode(input_ids[:, self.start_length :])
        done = []
        for decoded_generation in decoded_generations:
            done.append(any([stop_string in decoded_generation for stop_string in self.eof_strings]))
        return all(done)

class NoCommentConstraint(StoppingCriteria):
    """Custom `StoppingCriteria` which checks if all generated functions in the batch are completed."""

    def __init__(self, start_length, eof_strings, tokenizer):
        self.start_length = start_length
        self.eof_strings = eof_strings
        self.tokenizer = tokenizer

    def __call__(self, input_ids, scores, **kwargs):
        """Returns true if all generated sequences contain any of the end-of-function strings."""
        decoded_generations = self.tokenizer.batch_decode(input_ids[:, self.start_length :])
        done = []
        for decoded_generation in decoded_generations:
            done.append(any([stop_string in decoded_generation for stop_string in self.eof_strings]))
        return all(done)


def remove_last_block(string):
    """Remove the last block of the code containing EOF_STRINGS"""
    string_list = re.split("(%s)" % "|".join(EOF_STRINGS), string)
    # last string should be ""
    return "".join(string_list[:-2])


def main():
    # Setup configuration
    parser = HfArgumentParser(HumanEvalArguments)
    args = parser.parse_args()
    batch_size = args.batch_size
    n_samples = args.n_samples
  

    transformers.logging.set_verbosity_error()
    # enables code execution in code_eval metric
    os.environ["HF_ALLOW_CODE_EVAL"] = args.HF_ALLOW_CODE_EVAL
    # make sure tokenizer plays nice with multiprocessing
    os.environ["TOKENIZERS_PARALLELISM"] = "false"

    if args.num_workers is None:
        args.num_workers = multiprocessing.cpu_count()

    accelerator = Accelerator()
    #set_seed(args.seed, device_specific = True)

    # Load model and tokenizer
    model = AutoModelForCausalLM.from_pretrained(args.model_ckpt, local_files_only=True)
    tokenizer = AutoTokenizer.from_pretrained("lvwerra/codeparrot-small")
    tokenizer.pad_token = tokenizer.eos_token
    tokenizer.model_max_length = 1024
    # Generation settings
    comment_token = tokenizer(['#','//','\n/', '/*', '*/'], add_special_tokens=False).input_ids
    block_token = tokenizer(['ter', 'provider', 'resource', 'data', 'variable', 'output', 'module'], add_special_tokens=False).input_ids
    print(f'Comment tokens {comment_token}')
    print(f'Block tokens {block_token}')
    gen_kwargs = {
        "do_sample": args.do_sample,
        "temperature": args.temperature,
        "top_p": args.top_p,
        "top_k": args.top_k,
        #"bad_words_ids": comment_token,
        "stopping_criteria": StoppingCriteriaList([EndOfFunctionCriteria(0, EOF_STRINGS, tokenizer)]),}

    # Load evaluation dataset
    data_list, task_name = dataset_dict(args.provider)
    
    model, data_list, tokenizer = accelerator.prepare(model, data_list, tokenizer) # eval_loader
    
    n_tasks = len(data_list)
    if batch_size > n_samples: batch_size=n_samples
    with torch.no_grad():
        for i in range(n_tasks):
            file_path = f'data/{args.provider}/codeparrot-txt/{task_name[i]}'
            if not os.path.exists(file_path):
                print('Generating ', task_name[i])      
                code = ['']*n_samples
                for j in range(len(data_list[i])):
                    
                    for s in range(n_samples): 
                        code[s] = code[s] + data_list[i][j].strip()
                    
                    for batch in range(n_samples//batch_size):
                        #tokens = tokenizer(code[batch*batch_size: (1+batch)*batch_size], padding=True, return_tensors="pt")
                        tokens = tokenizer(['# Provider AWS in region "us-east-1" \n', '# Terraform block \n'], padding=True, return_tensors="pt")
                        gen_kwargs["stopping_criteria"][0].start_length = tokens.input_ids.shape[-1]
                        
                        tokens.input_ids =  tokens.input_ids[:,-1024:]
                        tokens.attention_mask = tokens.attention_mask[:,-1024:]
                        """
                        print("Tokens ", tokens.input_ids)
                        print("Mask ", tokens.attention_mask)
                        block_tokens = accelerator.unwrap_model(model).generate(
                            input_ids=tokens.input_ids.cuda(), 
                            attention_mask=tokens.attention_mask.cuda(), 
                            num_beams=1,
                            max_new_tokens = 1,
                            force_words_ids = block_token,
                            bad_words_ids = comment_token,
                            #do_sample = args.do_sample,
                            no_repeat_ngram_size=1,
                            remove_invalid_values=True)
                        print("Block ", block_tokens)
                        quit()
                        """
                        generated_tokens = accelerator.unwrap_model(model).generate(
                            input_ids = tokens.input_ids.cuda(), 
                            attention_mask = tokens.attention_mask.cuda(),
                            max_length = 1024, 
                            **gen_kwargs)
                        # https://huggingface.co/docs/transformers/main/en/main_classes/text_generation#transformers.generation_utils.GenerationMixin.generate

                        generated_tokens = accelerator.gather(generated_tokens)
                        generated_tokens = generated_tokens.cpu().numpy()
                        for b in range(batch_size):
                            gen_code = tokenizer.decode(generated_tokens[b,:], skip_special_tokens=True, clean_up_tokenization_spaces=True)
                            gen_code = gen_code[len(code[batch*batch_size+b]):]
                            if '\n}\n' in gen_code:
                                gen_code = gen_code.partition('\n}\n')[0] # return only the first block
                            code[batch*batch_size+b] = code[batch*batch_size+b] + gen_code +'\n}\n\n'
                
                os.makedirs(file_path)
                for s in range(n_samples):
                    # remove context
                    code[s] = code[s][len(data_list[i][0]):]
                    sample_file = open(f'{file_path}/sample-{s}.txt', "w", encoding='utf-8', errors='ignore')
                    sample_file.write(code[s])
                print('Saved ', task_name[i])  
                




if __name__ == "__main__":
    main()
