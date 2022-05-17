import os
import re
import shutil
import sys
import numpy as np
import json
import time
from collections import defaultdict

def make_tf(tf_path, easy, human=False):
    os.system(f'terraform -chdir={tf_path} init')
    if not easy:
        os.system(f'terraform -chdir={tf_path} plan -out=binary')
        os.system(f'terraform -chdir={tf_path} show -json binary > {tf_path}/plan.json')
    if easy:
        os.system(f'terraform -chdir={tf_path} plan -json > {tf_path}/plan.json')
    
    if human:
        file = open(str(tf_path)+'/plan.json', 'r', encoding='utf-8', errors='ignore')
        stringPlan = file.read()
        file.close()
        if stringPlan == '':
            shutil.rmtree(tf_path)
            sys.exit('Error '+tf_path)
    
    try:
        shutil.rmtree(f'{tf_path}/.terraform')
    except:
        print('----------------------------------')
        print(f"Can't delete {tf_path}/.terraform")

def remove_identifiers(txt_file):
    with open(txt_file, 'r', encoding='utf-8', errors='ignore') as file:
        identifiers = {}
        reference = {}
        i = 0
        for line in file:
            words = line.split(' ')
            if words[0] == 'resource' and len(words)>=3:
                reference[words[1][1:-1]+'.'+words[2][1:-1]] = words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='data' and len(words)>=3:
                reference['data.'+words[1][1:-1]+'.'+words[2][1:-1]] = 'data.'+words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='variable' and len(words)>=2:
                reference['var.'+words[1][1:-1]] = 'var.name_'+str(i)
                identifiers['variable '+words[1]] = 'variable "name_'+str(i)+'"'
                i+=1
            if words[0]=='output' and len(words)>=2:
                reference['output.'+words[1][1:-1]] = 'output.name_'+str(i)
                identifiers['output '+words[1]] = 'output "name_'+str(i)+'"'
                i+=1
        file.seek(0)
        text = file.read()

    for k in sorted(identifiers.keys(), reverse=True):
        text = text.replace(k, identifiers[k])
    for k in sorted(reference.keys(), reverse=True):
        text = text.replace(k, reference[k])
    return text
    
def clean_terraform(model, n_samples=None):
    for Provider in ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']:
        print(f'Cleaning {Provider}')
        for task in sorted(os.listdir(f'data/{Provider}/human-tf')):
            if os.path.exists(f'data/{Provider}/human-tf/{task}/.terraform'):
                try:
                    shutil.rmtree(f'data/{Provider}/human-tf/{task}/.terraform')
                except:
                    k = 1
                    #print(f'Error in {Provider}/human-tf/{task}/.terraform')
            if os.path.exists(f'data/{Provider}/human-tf/{task}/binary'):
                os.remove(f'data/{Provider}/human-tf/{task}/binary')
            if os.path.exists(f'data/{Provider}/human-tf/{task}/.terraform.lock.hcl'):
                os.remove(f'data/{Provider}/human-tf/{task}/.terraform.lock.hcl')
            
        for task in sorted(os.listdir(f'data/{Provider}/{model}-tf')):
            for sample in sorted(os.listdir(f'data/{Provider}/{model}-tf/{task}')):
                if os.path.exists(f'data/{Provider}/{model}-tf/{task}/{sample}/.terraform/'):
                    try:
                        shutil.rmtree(f'data/{Provider}/{model}-tf/{task}/{sample}/.terraform/')
                    except:
                        k = 1
                        #print(f'Error in {Provider}/{model}-tf/{task}/{sample}/.terraform/')
                if os.path.exists(f'data/{Provider}/{model}-tf/{task}/{sample}/binary'):
                    os.remove(f'data/{Provider}/{model}-tf/{task}/{sample}/binary')
                if os.path.exists(f'data/{Provider}/{model}-tf/{task}/{sample}/.terraform.lock.hcl'):
                    os.remove(f'data/{Provider}/{model}-tf/{task}/{sample}/.terraform.lock.hcl')
        
        if n_samples != None:
            for task in sorted(os.listdir(f'data/{Provider}/{model}-tf')):
                i = 0
                for sample in sorted(os.listdir(f'data/{Provider}/{model}-tf/{task}')):         
                    if i >= n_samples:
                        try:
                            shutil.rmtree(f'data/{Provider}/{model}-tf/{task}/{sample}')
                        except:
                            print(f'Error data/{Provider}/{model}-tf/{task}/{sample}')
                        if os.path.exists(f'data/{Provider}/{model}-txt/{task}/{sample}.txt'):
                            os.remove(f'data/{Provider}/{model}-txt/{task}/{sample}.txt')
                    i += 1       

def clean_json(input):
    input = re.sub('"(tags|tags_all)":.+?},','', input)
    input = re.sub('"constant_value":(true|false)', '', input)
    input = re.sub('"(description|name|constant_value|terraform_version|resource_group_name|id|bucket_name|network|instance)":".+?"','', input)
    input = re.sub('"(description|name|constant_value|terraform_version|resource_group_name|id|bucket_name|network)":null','', input)
    input = re.sub('"(name|description)":{.*?}','', input)
    input = re.sub('({|}|,|\[|\]|"|:)','', input)
    return  re.sub('\n','', input)

def remove_brackets(input):
    input = re.sub('\[.+\]','', input)
    return input

def pass1(provider, model, n_samples):
    out_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    task_names = []
    for task in sorted(os.listdir(f'data/{provider}/human-tf')):
        task_names.append(task)
        #n_samples = len(os.listdir(f'data/{provider}/{model}-tf/{task}'))
        # find the number of duplicates
        i = 0
        sample_to_int = {}
        distr = [0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            sample_to_int[sample]=i
            if not os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                duplicate = os.listdir(f'data/{provider}/{model}-tf/{task}/{sample}')[0]
                try:
                    distr[sample_to_int[duplicate[:-4]]]+=1
                except:
                    shutil.rmtree(f'data/{provider}/{model}-tf/{task}/{sample}')
                    sys.exit(f'data/{provider}/{model}-tf/{task}/{sample}')
            else:
                distr[i] +=1
            i+=1
            if i == n_samples:
                break
        # calculate success rate on tasks
        i == 0
        errors = []
        human_file = open(f'data/{provider}/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore')
        human_json = human_file.read()
        human_json = clean_json(human_json)
        success_rate=[0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            if os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                model_file = open(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore')
                model_json = model_file.read()
                model_json = clean_json(model_json)
                if model_json == human_json:
                    success_rate[sample_to_int[sample]] = distr[sample_to_int[sample]]
                else: 
                    errors.append(int(sample[7:]))
            i += 1
            if i == n_samples:
                break

        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')

def clean_plan(plan):
    cleaned_plan = []
    for i in range(1, len(plan)):
        if '"@level":"info"' in plan[i]:
            cleaned_plan.append(plan[i])
    return cleaned_plan
            

def compile_check(provider, model, n_samples):
    task_names = []
    out_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{provider}/human-tf')):
        task_names.append(task)
        #n_samples = len(os.listdir(f'data/{provider}/{model}-tf/{task}'))
        # find the number of duplicates
        i = 0
        sample_to_int = {}
        distr = [0]*n_samples
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            sample_to_int[sample]=i
            if not os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                duplicate = os.listdir(f'data/{provider}/{model}-tf/{task}/{sample}')[0]
                try:
                    distr[sample_to_int[duplicate[:-4]]]+=1
                except:
                    sys.exit(f'data/{provider}/{model}-tf/{task}/{sample}')
            else:
                distr[i] +=1
            i+=1
            if i == n_samples:
                break
        # calculate success rate on tasks
        success_rate=[0]*n_samples
        t=0
        errors = []
        human_file = open(f'data/{provider}/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore')
        human_plan = human_file.readlines()
        human_plan = clean_plan(human_plan)
        for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
            correct = distr[sample_to_int[sample]]
            if os.path.exists(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json'):
                model_file = open(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore')
                model_plan = model_file.readlines()
                model_plan = clean_plan(model_plan)
                for i in range(len(human_plan)):
                    line_human = json.loads(human_plan[i])
                    if len(model_plan) > i:
                        line_model = json.loads(model_plan[i])
                        if remove_brackets(line_model['@message']) != remove_brackets(line_human['@message']):
                            correct = 0
                            if int(sample[7:]) not in errors:
                                errors.append(int(sample[7:]))
                    else:
                        correct = 0
                        if int(sample[7:]) not in errors:
                                errors.append(int(sample[7:]))
            success_rate[sample_to_int[sample]] = correct
            t +=1
            if t ==n_samples:
                break

        if success_rate == []: success_rate=[0]
        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')

def make_json_human(provider):
    print('------------------------------------\nhuman')
    for task in sorted(os.listdir(f'data/{provider}/human-txt')):
        print(task)
        tf_path = f'data/{provider}/human-tf/{task[:-4]}'
        if not os.path.exists(tf_path):
            os.makedirs(tf_path)
            clean_txt = remove_identifiers(f'data/{provider}/human-txt/{task}')
            tf_file = open(tf_path+'/main.tf', 'w', encoding='utf-8', errors='ignore')
            tf_file.write(clean_txt)
            tf_file.close()
            easy = True if 'easy' in provider else False
            make_tf(tf_path, easy, human=True)

def make_json_model(provider, model):
    print(f'------------------------------------\n{model}')
    if not os.path.exists(f'data/{provider}/{model}-tf'): os.makedirs(f'data/{provider}/{model}-tf')
    for task in sorted(os.listdir(f'data/{provider}/{model}-txt')):
        print(task)
        hash_to_sample = {}
        
        tf_path = f'data/{provider}/{model}-tf/{task}'
        if not os.path.exists(tf_path): 
            os.makedirs(tf_path)

        for sample_txt in sorted(os.listdir(f'data/{provider}/{model}-txt/{task}')):
            sample = sample_txt[:-4]
            if not os.path.exists(f'{tf_path}/{sample}'):
                os.makedirs(f'{tf_path}/{sample}')
                clean_txt = remove_identifiers(f'data/{provider}/{model}-txt/{task}/{sample_txt}',)
                
                if hash(clean_txt) not in hash_to_sample:
                    hash_to_sample[hash(clean_txt)] = sample
                    tf_file = open( f'{tf_path}/{sample}/main.tf', 'w', encoding='utf-8', errors='ignore')
                    tf_file.write(clean_txt)
                    tf_file.close()
                    easy = True if 'easy' in provider else False
                    make_tf(f'{tf_path}/{sample}', easy)
                else:
                    duplicate = hash_to_sample[hash(clean_txt)]
                    tf_file = open(f'{tf_path}/{sample}/{duplicate}.txt', 'w', encoding='utf-8', errors='ignore')
                    tf_file.close()

if __name__ == "__main__":
    #model = 'codeparrot-small'
    n_samples = 50
    for model in ['codex', 'codeparrot-large',  'gpt-2-large', 'gpt-2-small']: #'codeparrot-small',
        clean_terraform(model, n_samples)
        for provider in ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']:
            print(f'-----------------------------------------\n{provider}')
            #make_json_human(provider)
            #make_json_model(provider, model)
            easy = True if 'easy' in provider else False
            if not easy:
                pass1(provider, model, n_samples)
            else:
                compile_check(provider, model, n_samples)    
