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


def remove_last_block(string):
    """Remove the last block of the code containing EOF_STRINGS"""
    string_list = re.split("(%s)" % "|".join(EOF_STRINGS), string)
    # last string should be ""
    return "".join(string_list[:-2])

def complete_task(data_list, model, tokenizer, accelerator, task_name, provider='aws', samples=1, batch_size=10, **gen_kwargs):
    n_tasks = len(data_list)
    if batch_size > samples: batch_size=samples
    with torch.no_grad():
        for i in range(n_tasks):
            print('Generating ', task_name[i])      
            input = ['']*samples
            for j in range(len(data_list[i])):
                start_length = []
                
                for s in range(samples): 
                    input[s] = input[s] + data_list[i][j]
                    start_length.append(len(input[s]))
                
                for batch in range(samples//batch_size):
                    """
                        "ids": outputs.input_ids[task],
                        "task_id": task,
                        "input_len": outputs.attention_mask[task].sum(),
                    """
                    tokens = tokenizer(input[batch*batch_size: (1+batch)*batch_size], padding=True, return_tensors="pt")
                    #tokens = tokenizer(['# make a funktion', '# say hello'], padding=True, return_tensors="pt")
                    gen_kwargs["stopping_criteria"][0].start_length = tokens.input_ids.shape[-1]
                    # input is [N x M x K] batch size, input length 
                    mask = tokens.attention_mask
                    generated_tokens = accelerator.unwrap_model(model).generate(
                        input_ids=tokens.input_ids, attention_mask=mask, **gen_kwargs)
                    # https://huggingface.co/docs/transformers/main/en/main_classes/text_generation#transformers.generation_utils.GenerationMixin.generate
                    print("Generated tokens")
                    print(generated_tokens)
                    generated_tokens = accelerator.gather(generated_tokens)
                    generated_tokens = generated_tokens.cpu().numpy()
                    #generated_tasks = generated_tasks.cpu().numpy()
                    for b in range(batch_size):
                        gen_code = tokenizer.decode(generated_tokens[b,:], skip_special_tokens=True, clean_up_tokenization_spaces=True)
                        print("Generated code ", gen_code)
                        input[batch*batch_size+b] = input[batch*batch_size+b] + gen_code +"\n}\n\n"
            for s in range(samples):
                file_path = f'data/{provider}/codeparrot-txt/{task_name[i]}/sample-{s}.txt'
                sample_file = open(file_path, "w")
                sample_file.write(input[s])


def main():
    # Setup configuration
    parser = HfArgumentParser(HumanEvalArguments)
    args = parser.parse_args()

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

    # Generation settings
    gen_kwargs = {
        "do_sample": args.do_sample,
        "temperature": args.temperature,
        "max_new_tokens": args.max_new_tokens,
        "top_p": args.top_p,
        "top_k": args.top_k,
        "stopping_criteria": StoppingCriteriaList([EndOfFunctionCriteria(0, EOF_STRINGS, tokenizer)]),
    }

    # Load evaluation dataset and metric
    data_list, task_name = dataset_dict(args.provider)
    model = accelerator.prepare(model) # eval_loader
    
    complete_task(data_list, model, tokenizer, accelerator, task_name, args.provider, args.n_samples, 10, **gen_kwargs)

if __name__ == "__main__":
    main()
