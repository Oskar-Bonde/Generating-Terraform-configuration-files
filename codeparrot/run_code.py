import os

datasets = ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']

for data in datasets:
    print('----------------------------------------------')
    print(data)
    os.system(f'python codeparrot_gen.py --provider {data} --model_ckpt ./models/model-4 --batch_size 20 --n_samples 100')

# python codeparrot_gen.py --provider aws --model_ckpt ./models/model-3 --batch_size 2 --device_int 0