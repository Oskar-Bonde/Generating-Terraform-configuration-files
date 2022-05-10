import os
import shutil


def del_tasks(provider, tasks):
    for task in tasks:
        for folder in sorted(os.listdir(f'data/{provider}/')):
            if folder != 'human-txt':
                if os.path.exists(f'data/{provider}/{folder}/{task}'):
                    shutil.rmtree(f'data/{provider}/{folder}/{task}')
                    print(f'Deleted data/{provider}/{folder}/{task}')
            
if __name__ =='__main__':
    gcp_tasks = ['network-firewall', 'network_subnet', 'notebook_instance', 'provider_not_only', 'sql_instance-sql_database', 'instance', 'instance-output_cpu']
    errors = ['dns_policy', 'bucket-backend_bucket']
    #del_tasks('gcp', gcp_tasks)
    
    azure_tasks =['client_config', 'client_config-bot_channels', 'cognitive_account-client_config-bot_channels', 'cognitive_account-client_config-bot_channels-line_speech', 'automation_account']
    #del_tasks('azure', azure_tasks)
    
    aws_tasks = [' ']