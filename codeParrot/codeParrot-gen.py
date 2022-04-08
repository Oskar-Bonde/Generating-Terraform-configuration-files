import os

import numpy as np
import torch
import transformers

from transformers import AutoTokenizer, AutoModelForCausalLM, TrainingArguments, Trainer, AdamW
from datasets import load_dataset
# local file
from codeParrot.helpers import get_grouped_params, create_dataloaders

weight_decay = 0.1
learn_rate = 0.0005
warmup_steps = 2000
train_steps = 5000
shuffle_buffer = 1000
batch_size = 192
seed = 101
train_data = './data/train-clean'

model = AutoModelForCausalLM.from_pretrained("lvwerra/codeparrot-small")
tokenizer = AutoTokenizer.from_pretrained("lvwerra/codeparrot-small")
tokenizer.add_special_tokens({'pad_token': '[PAD]'})
"""
data = load_dataset('./data/train-clean', split='train')
def tokenize_function(examples):
    return tokenizer(examples["content"], padding="max_length", truncation=True)
tokenized_datasets = data.map(tokenize_function, batched=True)
"""

train_dataloader = create_dataloaders(train_data, tokenizer, batch_size, seed)

optimizer = AdamW(get_grouped_params(model, weight_decay), lr= learn_rate)
lr_scheduler = transformers.get_scheduler('cosine', optimizer, num_warmup_steps = warmup_steps, num_training_steps=train_steps)

# load eval metrics

training_args = TrainingArguments(output_dir="./codeParrot/models",
                                  num_train_epochs = 5,
                                  save_strategy = 'epoch',
                                  evaluation_strategy = 'epoch'
                                  #lr_scheduler_type = lr_scheduler,
                                  #learning_rate = 0.0005
                                  #weight_decay = 0.1
                                  )

trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=train_dataloader,
    optimizers = (optimizer, lr_scheduler)
    #eval_dataset=small_eval_dataset,
    #compute_metrics=compute_metrics,
)

trainer.train()


