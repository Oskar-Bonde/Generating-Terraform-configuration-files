import json
import os
import re

def read_json(file_path):
    os.system("terraform -chdir="+str(file_path)+" show -json binary > "+str(file_path)+"/plan.json")
    with open(str(file_path)+"/plan.json", "r", encoding='utf-8', errors='ignore') as file:
        #print(file.read())
        stringPlan = file.read()
        stringPlan = re.sub('"address":.+?,','',stringPlan)
        stringPlan = re.sub('"description":.+?,','',stringPlan)
        stringPlan = re.sub('"name":.+?,','',stringPlan)
        stringPlan = re.sub('"variables":.+?}},','',stringPlan)
        #plan = json.loads(stringPlan)
        plan = stringPlan
    return plan

def print_json(plan):
    
    assert plan["planned_values"]["root_module"]["resources"] == plan["configuration"]["root_module"]["resources"]
    assert plan["configuration"]["root_module"]["variables"] == plan["variables"]

    print(plan["resource_changes"])
    
def re_test():
    str1 = '"terraform_version":"1.1.0-dev","variables":{"ec2_ami_id_alt":{"value":"ami-0915bcb5fa77e4892"},"region_alt":{"value":"us-east-1"}},"planned_values":'
    str1 = re.sub('"variables":.+?}},','',str1)
    print(str1)
    str2 = '"resources":[{"address":"aws_instance.ec2demo_alt","mode":"managed"'
    str2 = re.sub('"address":.+?,','',str2)

    str3 = '"default":"ami-0915bcb5fa77e4892","description":"AMI ID"},"region"'
    str4 = '"values":{"description":"Dev VPC SSH","egress"'
    str3 = re.sub('"description":.+?,|}$','',str3)
    str4 = re.sub('"description":.+?,|}$','',str4)
    print(str3)
    print(str4)

if __name__ == "__main__":
    #re_test()
    plan1 = read_json("file_1")
    plan2 = read_json("file_2")
    plan3 = read_json("file_3")
    plan4 = read_json("file_4")
    assert plan1 == plan2
    assert plan1 == plan3


