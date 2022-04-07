from torch.utils.data import IterableDataset
from torch.utils.data.dataloader import DataLoader
from datasets import load_dataset

# source github.com/huggingface/transformers/blob/main/examples/research_projects/codeparrot/scripts/

class BatchDataset(IterableDataset):
    def __init__(
        self, tokenizer, dataset, infinite=False, seq_length=1024, num_of_sequences=1024, chars_per_token=3.6
    ):
        self.tokenizer = tokenizer
        self.concat_token_id = tokenizer.bos_token_id
        self.dataset = dataset
        self.seq_length = seq_length
        self.input_characters = seq_length * chars_per_token * num_of_sequences
        self.epoch = 0
        self.infinite = infinite

    def __iter__(self):
        iterator = iter(self.dataset)
        more_examples = True
        while more_examples:
            buffer, buffer_len = [], 0
            while True:
                if buffer_len >= self.input_characters:
                    break
                try:
                    buffer.append(next(iterator)["content"])
                    buffer_len += len(buffer[-1])
                except StopIteration:
                    if self.infinite:
                        iterator = iter(self.dataset)
                        self.epoch += 1
                        logger.info(f"Dataset epoch: {self.epoch}")
                    else:
                        more_examples = False
                        break
            tokenized_inputs = self.tokenizer(buffer, truncation=False)["input_ids"]
            all_token_ids = []
            for tokenized_input in tokenized_inputs:
                all_token_ids.extend(tokenized_input + [self.concat_token_id])
            for i in range(0, len(all_token_ids), self.seq_length):
                input_ids = all_token_ids[i : i + self.seq_length]
                if len(input_ids) == self.seq_length:
                    yield torch.tensor(input_ids)

                    
def create_dataloaders(dataset_path, tokenizer, train_batch_size, seed, shuffle_buffer=1000, seq_length=1024):
    train_data = load_dataset(dataset_path, split="train", streaming=True)
    train_data = train_data.shuffle(buffer_size=shuffle_buffer, seed=seed)
    #valid_data = load_dataset(dataset_name_valid, split="train", streaming=False)
    torch_dataset = train_data.with_format("torch")
    train_dataset = BatchDataset(tokenizer, torch_dataset, infinite=True, seq_length=seq_length)
    #valid_dataset = ConstantLengthDataset(tokenizer, valid_data, infinite=False, seq_length=seq_length)
    
    train_dataloader = DataLoader(train_dataset, batch_size=train_batch_size)
    #eval_dataloader = DataLoader(valid_dataset, batch_size=valid_batch_size)
    return train_dataloader #eval_dataloader

             
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
    