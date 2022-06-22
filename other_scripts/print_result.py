from sklearn.linear_model import LinearRegression
from collections import defaultdict
import matplotlib.pyplot as plt
import numpy as np
import os

def one_model(model = 'codex', ):
    n_samples = 50
    success_rate = []
    task_int = {}
    analysis = {}
    num = 0
    avg_rate = 0
    
    for provider in ['aws', 'gcp', 'azure']: #['aws', 'gcp', 'azure']:
        result_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'r', encoding='utf-8', errors='ignore')
        all_lines = result_txt.readlines()
        lines = all_lines[1:-1]
        provider_tasks = 0
        
        for i in range(len(lines)):
            seg = lines[i].split(' | ')
            task = seg[0]
            rate = float(seg[1][:-1])
            task_int[f'{provider} {task}'] = num
            success_rate.append(rate)
            num += 1
            provider_tasks +=1
        
        for task in sorted(os.listdir(f'data/{provider}/human-txt')):
            with open(f'data/{provider}/human-txt/{task}', 'r', encoding='utf-8', errors='ignore') as task_file:
                n_blocks = 0
                n_characters = 0
                n_comment_characters = 0
                n_lines = 0
                long_comment = 0
                for line in task_file:
                    n_lines += 1
                    if line[0] == '#':
                        n_blocks+=1
                        n_comment_characters += len(line)
                        if len(line[2:]) > long_comment:
                            long_comment = len(line[2:])
                    else:
                        n_characters += len(line)

                analysis[f'{provider} {task[:-4]}'] = [n_blocks, n_characters, long_comment, n_comment_characters, n_lines]
        
        
    bar_figure(analysis, task_int, success_rate, 0)
    """
    create_figure(analysis, task_int, success_rate, 1, 'Lenght of Longest Comment')
    create_figure(analysis, task_int, success_rate, 2, 'Number of Characters')
    create_figure(analysis, task_int, success_rate, 3, 'Length of Comments')
    create_figure(analysis, task_int, success_rate, 4, 'Number of lines')
    """
    plt.show()
    

def create_figure(analysis, task_int, success_rate, num, name):
    x = []
    y = []
    for key in analysis.keys():
        x.append(analysis[key][num])
        y.append(success_rate[task_int[key]])

    X = np.array(x).reshape(len(x), 1)
    Y = np.array(y).reshape(len(x), 1)
    model = LinearRegression()
    model.fit(X, Y)

    # Now, predicting the y values according to the model
    y_line = model.predict(X)
    """ Success rate over XXXXX """
    plt.figure()
    plt.title(f"Success rate over {name}")
    plt.xlabel(name)
    plt.ylabel('Success rate')
    plt.scatter(x, y)
    plt.plot(x, y_line, 'r')
    plt.legend()


def bar_figure(analysis, task_int, success_rate, num):
    x = []
    y = []
    
    for key in analysis.keys():
        x.append(analysis[key][num])
        y.append(success_rate[task_int[key]])
    rate = defaultdict(list)
    freq = [0]*(max(x))
    for i in range(len(x)):
        rate[x[i]].append(y[i])
        freq[x[i]-1] += 1

    mean_rate = []
    for i in range(1, max(x)+1):
        mean_rate.append(np.mean(rate[i]))
    mean_rate = np.nan_to_num(mean_rate)
        
    """ Success rate over XXXXX """
    plt.figure()
    plt.title(f"Success Rate Over Number of Blocks")
    plt.xlabel('Number of blocks in task')
    plt.ylabel('Average Success rate')
    x_axis = np.arange(1, max(x)+1)
    plt.bar(x_axis, mean_rate, width=0.7, color='royalblue', linewidth=0.5, edgecolor='k') 
    for i in range(len(x_axis)):
        plt.text(x_axis[i], mean_rate[i], freq[i], ha = 'center', bbox = dict(facecolor = 'tomato', alpha =1), label='Number of samples') # mean_rate[i]
    plt.legend()


def distribution():
    n_samples = 50
    model_distr = {}
    for model in ['codex', 'codeparrot-large', 'codeparrot-small', 'gpt-2-large', 'gpt-2-small']:
        provider_distr = {}
        for provider in ['aws', 'gcp', 'azure', 'aws-easy', 'gcp-easy', 'azure-easy']:
            num = 0
            distribution = np.zeros(n_samples)
            result_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'r', encoding='utf-8', errors='ignore')
            lines = result_txt.readlines()[1:-1]

            for i in range(len(lines)):
                seg = lines[i].split(' | ')
                distr = seg[3][1:-2].split(', ')
                distr = [int(i) for i in distr]
                distribution += np.array(sorted(distr, reverse=True))/n_samples
                num += 1
            distribution *= 1/num
            provider_distr[provider] = distribution
            print(np.sum(distribution))
            
        model_distr[model] = np.zeros(n_samples)
        for key in ['aws', 'gcp', 'azure', 'aws-easy', 'gcp-easy', 'azure-easy']:
            model_distr[model] += provider_distr[key]
        model_distr[model] *= 1/6
        
        x = np.arange(n_samples)
        plt.figure()
        plt.title(f'Duplicate Distribution {model}')
        plt.xlabel('Unique Sample')
        plt.ylabel('Probability')
        for key in ['aws', 'gcp', 'azure', 'aws-easy', 'gcp-easy', 'azure-easy']:
            plt.plot(x, provider_distr[key], linestyle='dashed', marker='o', label=key)
        plt.xlim([0, 5])
        plt.ylim([0, 0.8])
        plt.legend()
    
    plt.figure()
    plt.title(f'Duplicate Distribution Average')
    plt.xlabel('Unique Sample')
    plt.ylabel('Probability')
    for key in ['codex', 'codeparrot-large', 'codeparrot-small', 'gpt-2-large', 'gpt-2-small']:
        plt.plot(x, model_distr[key], linestyle='dashed', marker='o', label=key)
    plt.xlim([0, 5])
    plt.ylim([0, 0.8])
    plt.legend()
    
    plt.show()

def all_results():

    for model in ['codex', 'codeparrot-large', 'codeparrot-small', 'gpt-2-large', 'gpt-2-small', 'codex-0.6']:
        for dataset in [['aws', 'gcp', 'azure'], ['aws-easy',  'gcp-easy', 'azure-easy']]:
            avg_rate = 0
            n_tasks = 0
            for provider in dataset: #['aws', 'gcp', 'azure']:
                result_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'r', encoding='utf-8', errors='ignore')
                all_lines = result_txt.readlines()
                lines = all_lines[1:-1]
                provider_tasks = 0
                
                for i in range(len(lines)):
                    n_tasks += 1
                    provider_tasks +=1
                    
                last_line = all_lines[-1]
                print(f'{model} on {dataset}: {float(last_line.split()[-1][:-1])}')
                avg_rate += float(last_line.split()[-1][:-1])*provider_tasks
            avg_rate = avg_rate/n_tasks
            print(f'Average success rate {model} on {dataset} {avg_rate}')
        
def print_table():
    for provider in ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']:
        table = ['Task & Codex-12B & CodeParrot-110M & CodeParrot-1.5B & GPT-2-110M & GPT-2-1.5B \\\\','\hline\hline']
        print(f'-------------{provider}-------------')
        for model in ['codex', 'codeparrot-small', 'codeparrot-large',  'gpt-2-small', 'gpt-2-large']:
            result_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'r', encoding='utf-8', errors='ignore')
            all_lines = result_txt.readlines()
            lines = all_lines[1:-1]
            for i in range(len(lines)):
                seg = lines[i].split(' | ')
                task = seg[0]
                rate = float(seg[1][:-1])
                if model == 'codex':
                    task = task.replace('_','\\_')
                    if len(task) > 20:
                        table.append(f'{task[:20]}... & ')
                    else:
                        table.append(f'{task} & ')
                    table.append('\hline')
                if rate > 0:
                    result = '\\textbf{'+str(rate)[:5]+'}'
                else:
                    result = str(rate)[:5]
                if model != 'gpt-2-large':
                    table[2*i+2] = table[2*i+2] + result +' & '
                else: 
                    table[2*i+2] = table[2*i+2] + result +' \\\\ '
            avg_rate = all_lines[-1].split(' ')[-1][:-2]
            if model == 'codex':
                table.append(f'Average & {avg_rate[:5]} & ')
                table.append('\hline')
            elif model != 'gpt-2-large':
                table[-2] = table[-2] + avg_rate[:5] +' & '
            else:
                table[-2] = table[-2] + avg_rate[:5] +' \\\\ '
            
        print('\n'.join(table))
        print('-------------------------------------------------')
# for each provider and average

# success rate vs number of blocks 
# Bar plot, average success rate on y, with number of samples

# success rate vs lenght of longest comment

# success rate vs number of characters in solution, except comments

# success rate vs number of characters in all comments

# success rate vs size of largest block

# success rate vs number of lines

if __name__ == "__main__":
    #one_model()
    #all_results()
    #distribution()
    print_table()
    