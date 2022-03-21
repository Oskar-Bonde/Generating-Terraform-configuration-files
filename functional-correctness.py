import json
import os
import re
import shutil
import sys

def make_json(tf_path):
    #os.system("terraform -chdir="+str(tf_path)+" destroy")
    os.system("terraform -chdir="+str(tf_path)+" init")
    os.system("terraform -chdir="+str(tf_path)+" plan -out=binary")
    os.system("terraform -chdir="+str(tf_path)+" show -json binary > "+str(tf_path)+"/plan.json")
    #shutil.rmtree(tf_path+'/.terraform')
    #os.system("terraform -chdir="+str(tf_path)+" destroy")
    file = open(str(tf_path)+"/plan.json", "r", encoding='utf-8', errors='ignore')
    stringPlan = file.read()
    file.close()
    if stringPlan == "":
        shutil.rmtree(tf_path)
        sys.exit("Error "+tf_path)
        
    stringPlan = re.sub('"(description|name)":".+?"','',stringPlan) #(,?)"(description|name)":".+?"(,?)        
    return stringPlan

def remove_identifiers(txt_file, tf_folder):
    with open(txt_file, "r", encoding='utf-8', errors='ignore') as file:
        identifiers = {}
        i = 0
        for line in file:
            words = line.split(' ')
            if words[0] == "resource" or words[0]=="data":
                identifiers[words[2][1:-1]] ="name_"+str(i)
                i+=1

            elif words[0]=="variable" or words[0]=="output" or words[0]=="dynamic": # or words[0]=="module"
                identifiers[words[1][1:-1]] ="name_"+str(i)
                i+=1

        file.seek(0)
        file.readline()
        main = file.read()
        
    for k in sorted(identifiers.keys(), reverse=True):
        main = main.replace('.'+k,'.'+identifiers[k])
        main = main.replace('"'+k+'" {', '"'+identifiers[k]+'" {')
    file = open(tf_folder+"/main.tf", "w", encoding='utf-8', errors='ignore')
    file.write(main)


def numericalSort(value):
    numbers = re.compile(r'(\d+)')
    parts = numbers.split(value)
    parts[1::2] = map(int, parts[1::2])
    return parts

def open_all(path):
    unfiltered_path = path+'/unfiltered'
    for file in sorted(os.listdir(unfiltered_path), key=numericalSort):
        print(file)
        tf_path = path+'/tf-solution/'+file[:-4]
        if not os.path.exists(tf_path):
            os.makedirs(tf_path)
            remove_identifiers(unfiltered_path+'/'+file, tf_path)
            make_json(tf_path)

if __name__ == "__main__":
    open_all("data/hashicorp-certified-terraform")
    

