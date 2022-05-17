import os
import shutil


def del_tasks(provider, tasks):
    for task in tasks:
        #for folder in sorted(os.listdir(f'data/{provider}/')):
        folder = 'gpt-2-txt'
        if folder != 'human-txt':
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
    gcp_tasks = ['network-subnetwork', 'network-subnetwork-address', 'network-route', 'network-firewall', 'network_subnet', 'notebook_instance', 'provider_not_only', 'sql_instance-sql_database', 'instance', 'instance-output_cpu']
    del_tasks('gcp', gcp_tasks)
    
    azure_tasks =['client_config', 'client_config-bot_channels', 'cognitive_account-client_config-bot_channels', 'cognitive_account-client_config-bot_channels-line_speech', 'automation_account']
    del_tasks('azure', azure_tasks)
    
    aws_tasks = ['variable_map', 'variable-security_ssh-security_web-instance', 'instance']
    del_tasks('aws', aws_tasks)
    