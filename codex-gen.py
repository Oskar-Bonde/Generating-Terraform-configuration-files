import os
import openai
import time

# sample is a dict with index key. It contains a list of touples with promt and solution

class data_class:
    def __init__(self):
        self.path = "data\evaluation"
        self.files = {}
        self.raw_file = {}
        self.read_files()
        
    def read_files(self):
        file_num = -1
        for filename in sorted(os.listdir(self.path)):
            with open(os.path.join(self.path, filename), 'r') as f:
                file_num += 1
                prompts = []
                solutions = []
                #self.raw_file[file_num] = f.read()
                for line in f.readlines()[1:]:
                    if line[0] == "#":
                        prompts.append(line)
                        solutions.append("")
                    else: 
                        solutions[-1] = solutions[-1] + line
                self.files[file_num] = (prompts, solutions)
        self.num_files = file_num
        
    def generate_tf(self, index):
        context_file = open("data/context.txt", "r")
        context = context_file.read()
        output = ""
        for prompt in self.files[index][0]:
            output = output + prompt
            generated = openai.Completion.create(
                engine="code-davinci-001", #  code-cushman-001
                prompt= context+output,
                max_tokens = 256,
                top_p = 0.05,
                #temperature=0.1,
                n = 1,
                stop = "\n}\n",
                echo = False
            )
            output = output + generated["choices"][0]["text"] +"\n}\n\n"
        generated_file = open("data/result/generated_"+str(index)+".txt", "w")
        generated_file.write(output)
        
    def evaluate_all(self):
        for i in range(29, self.num_files):
            print(i)
            self.generate_tf(i)
            time.sleep(40)
        
        
if __name__ == "__main__":
    openai.api_key = "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"#os.getenv("KEY")
    data = data_class()
    data.evaluate_all()