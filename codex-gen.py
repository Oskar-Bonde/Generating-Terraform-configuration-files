import os
import openai
import time

# sample is a dict with index key. It contains a list of touples with promt and solution

class CodexModel:
    def __init__(self, provider):
        self.provider = provider 
        self.path = f"data/{provider}/human-txt"
        self.files = {}
        self.read_files()
        
    def read_files(self):
        file_num = 0
        for filename in sorted(os.listdir(self.path)):
            with open(os.path.join(self.path, filename), 'r') as f:
                file_num += 1
                prompts = []
                solutions = []
                for line in f.readlines():
                    if line[0] == "#":
                        prompts.append(line)
                        solutions.append("")
                    else: 
                        solutions[-1] = solutions[-1] + line
                self.files[filename[:-4]] = (prompts, solutions)
        self.num_files = file_num

    def generate_tf(self, key, context, samples=10, wait=60):
        context_file = open(context, "r")
        context = context_file.read()
        prompt = self.files[key][0][0]
        batch_size = 20
        if batch_size > samples:
            batch_size = samples
        input = []
        for batch in range(samples // batch_size):
            generated = self.codex(context+prompt, batch_size)
            for i in range(batch_size):
                input.append(context+prompt)
                input[i+batch*batch_size] = generated["choices"][i]["text"]+"\n}\n\n"
                
        for prompt in self.files[key][0][1:]:
            print("new prompt")
            time.sleep(wait)
            for i in range(samples):
                input[i] = input[i] + prompt
            for batch in range(samples // batch_size):
                generated = self.codex(input[batch*batch_size: (batch+1)*batch_size], 1) # 150 000 tokens per min
                for j in range(batch_size):
                    input[batch*batch_size+j] = input[batch*batch_size+j] + generated["choices"][j]["text"] +"\n}\n\n"
                    if generated["choices"][j]["finish_reason"] == "length":
                        print(f"Finish reason length index {batch*batch_size+j}")
                        print(prompt)

        for i in range(samples):
            file_path = f'data/{self.provider}/codex-txt/{key}/sample-{i}.txt'
            sample_file = open(file_path, "w")
            sample_file.write(input[i])

    def generate_samples(self, samples, wait=60):
        for key in sorted(self.files.keys(), reverse=False):
            print(key)
            save_path = f'data/{self.provider}/codex-txt/{key}'
            if not os.path.exists(save_path):
                os.makedirs(save_path)
                self.generate_tf(key, f"data/context-{self.provider}.txt", samples, wait)
                print(f'Wait {wait}s')
                time.sleep(wait)
        
    def codex(self, input, samples):
        generated = openai.Completion.create(
                engine="code-davinci-001", #  code-cushman-001
                prompt= input,
                max_tokens = 512,
                top_p = 0.95,
                temperature=0.2,
                n = samples,
                stop = "\n}\n",
                echo = False )
        return generated

if __name__ == "__main__":
    openai.api_key = "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"#os.getenv("KEY")
    
    model = CodexModel("azure")
    model.generate_samples(3, 5)