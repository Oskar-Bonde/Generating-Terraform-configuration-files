import os

import numpy as np
import torch
import transformers

from transformers import AutoTokenizer, AutoModelForCausalLM, TrainingArguments, Trainer, AdamW
from datasets import load_dataset

weight_decay = 0.1
learn_rate = 0.0005
warmup_steps = 2000
train_steps = 5000

data = load_dataset('./data/train-clean', split='train')
model = AutoModelForCausalLM.from_pretrained("lvwerra/codeparrot-small")
tokenizer = AutoTokenizer.from_pretrained("lvwerra/codeparrot-small")
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
def tokenize_function(examples):
    return tokenizer(examples["content"], padding="max_length", truncation=True)

# source github.com/huggingface/transformers/blob/main/examples/research_projects/codeparrot/scripts/codeparrot_training.py
def get_grouped_params(model, weight_decay, no_decay=["bias", "LayerNorm.weight"]):
    params_with_wd, params_without_wd = [], []
    for n, p in model.named_parameters():
        if any(nd in n for nd in no_decay):
            params_without_wd.append(p)
        else:
            params_with_wd.append(p)
    return [
        {"params": params_with_wd, "weight_decay": weight_decay},
        {"params": params_without_wd, "weight_decay": 0.0},
    ]


tokenized_datasets = data.map(tokenize_function, batched=True)

optimizer = AdamW(get_grouped_params(model, weight_decay), lr= learn_rate)
lr_scheduler = transformers.get_scheduler('cosine', optimizer, num_warmup_steps = warmup_steps, num_training_steps=train_steps)

training_args = TrainingArguments(output_dir="./codeParrot/models",
                                  num_train_epochs = 5,
                                  #lr_scheduler_type = lr_scheduler,
                                  save_strategy = 'epoch',
                                  evaluation_strategy = 'epoch'
                                  #learning_rate = 0.0005
                                  #weight_decay = 0.1
                                  )

# load metrics

print(tokenized_datasets)

trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=tokenized_datasets,
    optimizers = (optimizer, lr_scheduler)
    #eval_dataset=small_eval_dataset,
    #compute_metrics=compute_metrics,
)
trainer.train()

def load_eval():
    path = 'data/validation/human-txt/'
    #for filename in sorted(os.listdir(path)):
        # todo
