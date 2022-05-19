from sklearn.linear_model import LinearRegression
from collections import defaultdict
import matplotlib.pyplot as plt
import numpy as np
import os

def main():
    model = 'codex'
    success_rate = []
    task_int = {}
    analysis = {}
    num = 0
    for provider in ['aws', 'gcp', 'azure']:
        result_txt = open(f'data/{provider}/result_{model}_{provider}.txt', 'r', encoding='utf-8', errors='ignore')
        lines = result_txt.readlines()[1:-1]
        
        for i in range(len(lines)):
            task = lines[i].split()[0]
            rate = float(lines[i].split()[2][:-1])
            task_int[f'{provider} {task}'] = num
            success_rate.append(rate)
            num += 1
        
        
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

    bar_figure(analysis, task_int, success_rate, 0, 'Number of Blocks')
    create_figure(analysis, task_int, success_rate, 1, 'Lenght of Longest Comment')
    create_figure(analysis, task_int, success_rate, 2, 'Number of Characters')
    create_figure(analysis, task_int, success_rate, 3, 'Length of Comments')
    create_figure(analysis, task_int, success_rate, 4, 'Number of lines')
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


def bar_figure(analysis, task_int, success_rate, num, name):
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
        
    """ Success rate over XXXXX """
    fig = plt.figure()
    ax = fig.add_axes([0,0,1,1])
    ax.set_title(f"Success rate over {name}")
    #ax.set_xlabel(name)
    #ax.set_ylabel('Success rate')
    x_axis = np.arange(1, max(x)+1)
    ax.bar(x_axis, mean_rate) 
    #ax.set_xticks(ind,)
    #ax.bar_label(vbar, labels=freq, padding=8, color='b', fontsize=14)

 
# for each provider and average

# success rate vs number of blocks 
# Bar plot, average success rate on y, with number of samples

# success rate vs lenght of longest comment

# success rate vs number of characters in solution, except comments

# success rate vs number of characters in all comments

# success rate vs size of largest block

# success rate vs number of lines

if __name__ == "__main__":
    main()