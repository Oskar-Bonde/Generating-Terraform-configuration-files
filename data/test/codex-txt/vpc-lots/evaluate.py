import os
import re
import shutil
import sys

def make_json(tf_path):
    os.system("terraform -chdir="+str(tf_path)+" init")
    os.system("terraform -chdir="+str(tf_path)+" plan -out=binary")
    os.system("terraform -chdir="+str(tf_path)+" show -json binary > "+str(tf_path)+"/plan.json")
    shutil.rmtree(tf_path+'/.terraform')
    file = open(str(tf_path)+"/plan.json", "r", encoding='utf-8', errors='ignore')
    stringPlan = file.read()
    file.close()
    if stringPlan == "":
        shutil.rmtree(tf_path)
        sys.exit("Error "+tf_path)
        
    stringPlan = re.sub('"(description|name)":".+?"','',stringPlan) #(,?)"(description|name)":".+?"(,?)        
    return stringPlan

def compare_json(ref_path, generated):
    ref_file = open(ref_path, "r", encoding='utf-8', errors='ignore')
    reference = ref_file.read()
    for folder in sorted(os.listdir(generated)):
        with open(generated+'/'+folder+'/plan.json', "r", encoding='utf-8', errors='ignore') as file:
            json_plan = file.read()
            if json_plan == reference:
                print(folder+' are identical')
            else:
                print(folder+' are different' )

def remove_identifiers(txt_file, tf_folder):
    with open(txt_file, "r", encoding='utf-8', errors='ignore') as file:
        identifiers = {}
        reference = {}
        i = 0
        for line in file:
            words = line.split(' ')
            if words[0] == "resource":
                reference[words[1][1:-1]+'.'+words[2][1:-1]] = words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=="data":
                reference['data.'+words[1][1:-1]+'.'+words[2][1:-1]] = 'data.'+words[1][1:-1]+'.name_'+str(i)
                identifiers[words[1]+' '+words[2]] = words[1]+' "name_'+str(i)+'"'
                i+=1
            if words[0]=="variable":
                reference['var.'+words[1][1:-1]] = 'var.name_'+str(i)
                identifiers['variable '+words[1]] = 'variable "name_'+str(i)+'"'
                i+=1
            if words[0]=="output":
                reference['output.'+words[1][1:-1]] = 'output.name_'+str(i)
                identifiers['output '+words[1]] = 'output "name_'+str(i)+'"'
                i+=1
        file.seek(0)
        main = file.read()
    
    for k in sorted(identifiers.keys(), reverse=True):
        main = main.replace(k, identifiers[k])
    for k in sorted(reference.keys(), reverse=True):
        main = main.replace(k, reference[k])
    file = open(tf_folder+"/main.tf", "w", encoding='utf-8', errors='ignore')
    file.write(main)

def open_all(path):
    unfiltered_path = path+'/unfiltered'
    for file in sorted(os.listdir(unfiltered_path)):
        print(file)
        tf_path = f"data/{path}/tf-solution/{file[:-4]}"
        if not os.path.exists(tf_path):
            os.makedirs(tf_path)
            remove_identifiers(unfiltered_path+'/'+file, tf_path)
            make_json(tf_path)

if __name__ == "__main__":
    open_all("test")
    #compare_json('functional_correctness/test/reference.json', 'functional_correctness/test/tf-solution')

if __name__ == "__main__":
