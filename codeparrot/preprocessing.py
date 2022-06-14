import gzip
import multiprocessing
import os
import shutil
import time
import re

import numpy as np
from datasets import load_dataset
from transformers import HfArgumentParser
from transformers import AutoTokenizer

from arguments import PreprocessingArguments


def get_hash(example):
    """Get hash of content field."""
    return {"hash": hash(example["content"])}


def line_stats(example):
    """Calculates mean and max line length of file."""
    if example["content"] == '':
        return {"line_mean": 0, "line_max":0}
    line_lengths = [len(line) for line in example["content"].splitlines()]
    return {"line_mean": np.mean(line_lengths), "line_max": max(line_lengths)}


def alpha_stats(example):
    """Calculates mean and max line length of file."""
    alpha_frac = np.mean([c.isalnum() for c in example["content"]])
    return {"alpha_frac": alpha_frac}


def check_uniques(example, uniques):
    """Check if current hash is still in set of unique hashes and remove if true."""
    if example["hash"] in uniques:
        uniques.remove(example["hash"])
        return True
    else:
        return False


def is_autogenerated(example, scan_width=5):
    """Check if file is autogenerated by looking for keywords in the first few lines of the file."""
    keywords = ["auto-generated", "autogenerated", "automatically generated"]
    lines = example["content"].splitlines()
    for _, line in zip(range(scan_width), lines):
        for keyword in keywords:
            if keyword in line.lower():
                return {"autogenerated": True}
    else:
        return {"autogenerated": False}

def is_provider(example, provider):
    """Check if file is specific provider"""
    if provider in example["content"]:
        return True
    else:
        return False

def filter_provider(example):
    if example["provider"]:
        return True
    else:
        return False

def preprocess(example):
    """Chain all preprocessing steps into one function to not fill cache."""
    if example["content"] == None:
        example["content"] = ''
    results = dict()
    results.update(get_hash(example))
    results.update(line_stats(example))
    results.update(alpha_stats(example))
    results.update(is_autogenerated(example))
    return results


def filter(example, uniques, args):
    """Filter dataset with heuristics."""
    if not check_uniques(example, uniques):
        return False
    elif example["autogenerated"]:
        return False
    elif example["line_max"] > args.line_max:
        return False
    elif example["line_mean"] > args.line_mean:
        return False
    elif example["alpha_frac"] < args.alpha_frac:
        return False
    else:
        return True


def compress_file(file_path):
    """Compress a file with g-zip."""
    with open(file_path, "rb") as f_in:
        with gzip.open(file_path + ".gz", "wb", compresslevel=6) as f_out:
            shutil.copyfileobj(f_in, f_out)
    os.unlink(file_path)

def clean_map(row):    
    content = row['content']
    content = re.sub('/[*][\S\s]+(license|License|Copyright|copyright|WARRANTIES)+[\S\s]+[*]/','', content)
    content = re.sub('#.+(license|License|Copyright|copyright|WARRANTIES| law )+.+\n','', content)
    content = re.sub('#\n','', content)
    row['content'] = content
    return row

# Settings
parser = HfArgumentParser(PreprocessingArguments)
args = parser.parse_args()
if args.num_workers is None:
    args.num_workers = multiprocessing.cpu_count()

# Load dataset
t_start = time.time()
ds = load_dataset(args.dataset_name, split="train", name='tf-files')
print(f"Time to load dataset: {time.time()-t_start:.2f}")

# Run preprocessing
t_start = time.time()
ds = ds.map(preprocess) # num_proc=args.num_workers
print(f"Time to preprocess dataset: {time.time()-t_start:.2f}")

# Deduplicate hashes
uniques = set(ds.unique("hash"))
frac = len(uniques) / len(ds)
print(f"Fraction of duplicates: {1-frac:.2%}")

# Deduplicate data and apply heuristics
t_start = time.time()
ds_filter = ds.filter(filter, fn_kwargs={"uniques": uniques, "args": args})
print(f"Time to filter dataset: {time.time()-t_start:.2f}")
print(f"Size of filtered dataset: {len(ds_filter)}")

# Remove license comments
ds_filter = ds_filter.map(clean_map)

# Save data in batches of samples_per_file
if not os.path.exists(args.output_dir):
    os.makedirs(args.output_dir)
t_start = time.time()
val_split = int( len(ds_filter) // args.val_fraction**-1 )
val_path = f"{args.output_dir}/validation-file.json"
train_path = f"{args.output_dir}/train-file.json"

ds_filter.select(list(range(0, val_split))).to_json(val_path)
compress_file(val_path)
ds_filter.select(list(range(val_split, len(ds_filter)))).to_json(train_path)
compress_file(train_path)

print(f"Time to save dataset: {time.time()-t_start}")



# python preprocessing.py --dataset_name ./data/train-raw --output_dir ./data/train-clean --text_column content