import os

datasets = ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']

for data in datasets:
    print('----------------------------------------------')
    print(data)
    os.system(f'python codeparrot_gen.py --provider {data} --model_ckpt ./models/model-5 --batch_size 10 --n_samples 50 --model_name gpt-2-small --device_int 0')

# python codeparrot_gen.py --provider aws --model_ckpt ./models/model-3 --batch_size 2 --device_int 0