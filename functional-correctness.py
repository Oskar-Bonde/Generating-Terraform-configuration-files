import os
import re
import shutil
import sys
import numpy as np
import json

def make_tf(tf_path, model, easy):
    os.system(f'terraform -chdir={tf_path} init')
    if not easy:
        os.system(f'terraform -chdir={tf_path} plan -out=binary')
        os.system(f'terraform -chdir={tf_path} show -json binary > {tf_path}/plan.json')
    if easy:
        os.system(f'terraform -chdir={tf_path} plan -json > {tf_path}/plan.json')
    if os.path.exists(f'{tf_path}/.terraform'):
        shutil.rmtree(f'{tf_path}/.terraform')
    if model == 'human':
        file = open(str(tf_path)+'/plan.json', 'r', encoding='utf-8', errors='ignore')
        stringPlan = file.read()
        file.close()
        if stringPlan == '':
            shutil.rmtree(tf_path)
            sys.exit('Error '+tf_path)
            
    #stringPlan = re.sub('"(description|name)":".+?"','',stringPlan) #(,?)"(description|name)":".+?"(,?)        
    #return stringPlan

def remove_identifiers(txt_file, tf_folder):
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
        main = file.read()

    for k in sorted(identifiers.keys(), reverse=True):
        main = main.replace(k, identifiers[k])
    for k in sorted(reference.keys(), reverse=True):
        main = main.replace(k, reference[k])
    file = open(tf_folder+'/main.tf', 'w', encoding='utf-8', errors='ignore')
    file.write(main)

def compare_json(ref_path, generated):
    ref_file = open(ref_path, 'r', encoding='utf-8', errors='ignore')
    reference = ref_file.read()
    for folder in sorted(os.listdir(generated)):
        with open(generated+'/'+folder+'/plan.json', 'r', encoding='utf-8', errors='ignore') as file:
            json_plan = file.read()
            if json_plan == reference:
                print(folder+' are identical')
            else:
                print(folder+' are different')

def clean_json(input):
    input = re.sub('"(tags|tags_all)":.+?},','', input)
    input = re.sub('"(description|name|constant_value)":".+?"','', input)
    return  re.sub('({|}|,|[|]|"|:)','', input)

def pass1(provider, model):
    task_names = []
    out_txt = open(f'data/{provider}/result_{model}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{provider}/{model}-tf')):
        task_names.append(task)
        success_rate = []
        errors = []
        with open(f'data/{provider}/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore') as human_file:
            human_json = human_file.read()
            human_json = clean_json(human_json)
            for sample in sorted(os.listdir(f'data/{provider}/{model}-tf/{task}')):
                with open(f'data/{provider}/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore') as model_file:
                    model_json = model_file.read()
                    model_json = clean_json(model_json)
                    if model_json == human_json:
                        success_rate.append(1)
                    else: 
                        success_rate.append(0)
                        errors.append(int(sample[7:]))
        if success_rate == []: success_rate=[0]
        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')
    
def compile_check(provider, model):
    task_names = []
    out_txt = open(f'data/{provider}-easy/result_{model}.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{provider}-easy/{model}-tf')):
        task_names.append(task)
        success_rate = []
        errors = []
        with open(f'data/{provider}-easy/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore') as human_file:
            human_plan = human_file.readlines()
            for sample in sorted(os.listdir(f'data/{provider}-easy/{model}-tf/{task}')):
                correct = 1
                with open(f'data/{provider}-easy/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore') as model_file:
                    model_plan = model_file.readlines()
                    for i in range(len(human_plan)-1):
                        line_human = json.loads(human_plan[i])
                        if line_human['@level'] =='info':
                            if len(model_plan) > i and '{' in model_plan[i]:
                                line_model = json.loads(model_plan[i])
                                if line_model['@message'] != line_human['@message']:
                                    correct = 0
                                    if int(sample[7:]) not in errors:
                                        errors.append(int(sample[7:]))
                            else:
                                correct = 0
                                if int(sample[7:]) not in errors:
                                        errors.append(int(sample[7:]))
                                #print('length error')
                success_rate.append(correct)
            
        if success_rate == []: success_rate=[0]
        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')
             
def make_json(provider, model, easy=False):
    print(model)
    if easy:
        path = f'data/{provider}-easy/{model}'
    else:
        path = f'data/{provider}/{model}'
    for file in sorted(os.listdir(f'{path}-txt')):
        print(file)
        if model == 'human':
            tf_path = f'{path}-tf/{file[:-4]}'
            if not os.path.exists(tf_path):
                os.makedirs(tf_path)
                remove_identifiers(f'{path}-txt/{file}', tf_path)
                make_tf(tf_path, model, easy)
        else:
            tf_path = f'{path}-tf/{file}'
            if not os.path.exists(tf_path):
                os.makedirs(tf_path)
            for sample in sorted(os.listdir(f'{path}-txt/{file}')):
                if not os.path.exists(f'{tf_path}/{sample[:-4]}'):
                    os.makedirs(f'{tf_path}/{sample[:-4]}')
                    remove_identifiers(f'{path}-txt/{file}/{sample}', f'{tf_path}/{sample[:-4]}')
                    make_tf(f'{tf_path}/{sample[:-4]}', model, easy)

if __name__ == "__main__":
    provider = 'aws'
    easy = True
    model = 'codeparrot'
    make_json(provider, 'human', easy)
    make_json(provider, model, easy)
    if easy:
        compile_check(provider, model)
    else:
        pass1(provider, model)
    
