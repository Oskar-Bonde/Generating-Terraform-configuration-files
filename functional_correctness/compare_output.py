import json
import os
import re

def read_json(file_path):
    remove_identifiers(file_path)
    #os.system("terraform -chdir="+str(file_path)+" destroy")
    #os.system("terraform -chdir="+str(file_path)+" init")
    #os.system("terraform -chdir="+str(file_path)+" plan -out=binary")
    #os.system("terraform -chdir="+str(file_path)+" show -json binary > "+str(file_path)+"/plan.json")
    with open(str(file_path)+"/plan.json", "r", encoding='utf-8', errors='ignore') as file:
        stringPlan = file.read()
        stringPlan = re.sub('"(description|name)":".+?"','',stringPlan) #(,?)"(description|name)":".+?"(,?)        
    return stringPlan

def remove_identifiers(path):
    with open(str(path)+"/main_unfilter.txt", "r", encoding='utf-8', errors='ignore') as file:
        identifiers = {}
        i = 0
        for line in file:
            words = line.split(' ')
            if words[0] == "resource" or words[0]=="data":
                identifiers[words[2][1:-1]] ="name_"+str(i)
                i+=1

            elif words[0]=="variable" or words[0]=="output" or words[0]=="module" or words[0]=="dynamic":
                identifiers[words[1][1:-1]] ="name_"+str(i)
                i+=1

        file.seek(0)
        main = file.read()
        
    for k, v in identifiers.items():
        main = main.replace('.'+k,'.'+v)
        main = main.replace('"'+k+'" {', '"'+v+'" {')
    file = open(str(path)+"/main.tf", "w", encoding='utf-8', errors='ignore')
    file.write(main)


if __name__ == "__main__":
    #re_test()
    plan1 = read_json("file_1")
    plan2 = read_json("file_2")
    plan3 = read_json("file_3")
    plan4 = read_json("file_4")
    print("file 1", plan1)
    print("file 3", plan3)
    assert plan1 == plan2
    assert plan1 == plan3
    assert plan1 != plan4
    

