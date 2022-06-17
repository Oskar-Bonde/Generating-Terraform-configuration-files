import os
import shutil


def del_tasks(provider, tasks):
    for task in tasks:
        for folder in sorted(os.listdir(f'data/{provider}/')):
            if folder[-2:] == 'tf':
                print(f'data/{provider}/{folder}/{task}')
                if os.path.exists(f'data/{provider}/{folder}/{task}'):
                    shutil.rmtree(f'data/{provider}/{folder}/{task}')
                    print(f'Deleted data/{provider}/{folder}/{task}')

def del_binary(provider, tasks):
    for task in tasks:
        for folder in sorted(os.listdir(f'data/{provider}/')):
            if folder != 'human-txt':
                if os.path.exists(f'data/{provider}/{folder}/{task}/binary'):
                    shutil.rmtree(f'data/{provider}/{folder}/{task}/binary')
                    print(f'Deleted data/{provider}/{folder}/{task}')
                if os.path.exists(f'data/{provider}/{folder}/{task}/.terraform.lock.hcl'):
                    shutil.rmtree(f'data/{provider}/{folder}/{task}/.terraform.lock.hcl')
            
if __name__ =='__main__':
    for provider in ['gcp-easy', 'azure-easy']:
        #del_tasks(provider, ['provider'])
