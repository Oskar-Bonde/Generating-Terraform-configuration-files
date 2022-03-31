import os
import re
import shutil
import sys
import numpy as np

def make_tf(tf_path, model):
    os.system(f'terraform -chdir={tf_path} init')
    os.system(f'terraform -chdir={tf_path} plan -out=binary')
    os.system(f'terraform -chdir={tf_path} show -json binary > {tf_path}/plan.json')
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
            if words[0] == 'resource':
                reference[words[1][1:-1]+'.'+words[2][1:-1]] = words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='data':
                reference['data.'+words[1][1:-1]+'.'+words[2][1:-1]] = 'data.'+words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=='variable':
                reference['var.'+words[1][1:-1]] = 'var.name_'+str(i)
                identifiers['variable '+words[1]] = 'variable "name_'+str(i)+'"'
                i+=1
            if words[0]=='output':
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

def remove_ident(input):
    input = re.sub('"(tags|tags_all)":.+?},','', input)
    input = re.sub('"(description|name|constant_value)":".+?"','', input)
    return  re.sub('({|}|,|[|]|"|:)','', input)

def pass1(path, model):
    task_names = []
    out_txt = open(f'data/{path}/result.txt', 'w', encoding='utf-8', errors='ignore')
    out_txt.write('Task | Success rate | Errors\n')
    total_success_rate = []
    for task in sorted(os.listdir(f'data/{path}/{model}-tf')):
        task_names.append(task)
        success_rate = []
        errors = []
        with open(f'data/{path}/human-tf/{task}/plan.json', 'r', encoding='utf-8', errors='ignore') as human_file:
            human_json = human_file.read()
            human_json = remove_ident(human_json)
            for sample in sorted(os.listdir(f'data/{path}/{model}-tf/{task}')):
                with open(f'data/{path}/{model}-tf/{task}/{sample}/plan.json', 'r', encoding='utf-8', errors='ignore') as model_file:
                    model_json = model_file.read()
                    model_json = remove_ident(model_json)
                    if model_json == human_json:
                        success_rate.append(1)
                    else: 
                        success_rate.append(0)
                        errors.append(int(sample[7:]))
        total_success_rate.append(np.mean(success_rate))
        out_txt.write(f'{task} | {np.mean(success_rate)*100}% | {sorted(errors)} \n')
    out_txt.write(f'Average success rate {np.mean(total_success_rate)*100}%\n')
                        
def make_json(path, model):
    txt_path = f'data/{path}/{model}-txt'
    for file in sorted(os.listdir(txt_path)):
        print(file)
        if model == 'human':
            tf_path = f'data/{path}/{model}-tf/{file[:-4]}'
            if not os.path.exists(tf_path):
                os.makedirs(tf_path)
                remove_identifiers(f'{txt_path}/{file}', tf_path)
                make_tf(tf_path, model)
        else:
            tf_path = f'data/{path}/{model}-tf/{file}'
            if not os.path.exists(tf_path):
                os.makedirs(tf_path)
            for sample in sorted(os.listdir(f'{txt_path}/{file}')):
                if not os.path.exists(f'{tf_path}/{sample[:-4]}'):
                    os.makedirs(f'{tf_path}/{sample[:-4]}')
                    remove_identifiers(f'{txt_path}/{file}/{sample}', f'{tf_path}/{sample[:-4]}')
                    make_tf(f'{tf_path}/{sample[:-4]}', model)

if __name__ == "__main__":
    make_json('test', 'codex')
    make_json('test', 'human')
    pass1('test', 'codex')
    #compare_json('functional_correctness/test/reference.json', 'functional_correctness/test/tf-solution')