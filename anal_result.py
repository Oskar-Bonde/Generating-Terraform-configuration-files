from sklearn.linear_model import LinearRegression
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
                long_comment = 0
                for line in task_file:
                    if line[0] == '#':
                        n_blocks+=1
                        if len(line[2:]) > long_comment:
                            long_comment = len(line[2:])
                    else:
                        n_characters += len(line)

                analysis[f'{provider} {task[:-4]}'] = [n_blocks, n_characters, long_comment]

    create_figure(analysis, task_int, success_rate, 0, 'Number of Blocks')
    create_figure(analysis, task_int, success_rate, 1, 'Lenght of Longest Comment')
    create_figure(analysis, task_int, success_rate, 2, 'Number of Characters')
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

            
# for each provider and average

# success rate vs number of blocks 
# Bar plot, average success rate on y, with number of samples

# success rate vs lenght of longest comment

# success rate vs number of characters in solution, except comments

# success rate vs size of largest block

if __name__ == "__main__":
    main()