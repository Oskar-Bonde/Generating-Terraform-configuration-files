import os
import openai
import time

# sample is a dict with index key. It contains a list of touples with promt and solution

class CodexModel:
    def __init__(self, provider, n_samples=3, wait=5, temperature=0.2, file_name = ''):
        openai.api_key = "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"#os.getenv("KEY")
        self.provider = provider 
        self.n_samples = n_samples
        self.wait = wait
        self.temperature = temperature
        self.file_name = file_name
        self.batch_size = 20
        self.batch_wait = wait // 3
        self.path = f"data/{provider}/human-txt"
        self.files = {}
        if not os.path.exists(f'data/{provider}/codex-txt{file_name}'): os.makedirs(f'data/{provider}/codex-txt{file_name}')
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

    def generate_samples(self):
        for key in sorted(self.files.keys(), reverse=False):
            #print(key)
            save_path = f'data/{self.provider}/codex-txt{self.file_name}/{key}'
            if not os.path.exists(save_path):
                os.makedirs(save_path)
                self.generate_tf(key, f"data/context-{self.provider}.txt")
                print(f'Wait {self.wait}s')
                time.sleep(self.wait)

    def generate_tf(self, key, context):
        context_file = open(context, "r")
        context = context_file.read()
        prompt = self.files[key][0][0]
        batch_size = self.batch_size
        if batch_size > self.n_samples: batch_size = self.n_samples
        input = []
        for batch in range(self.n_samples // batch_size):
            generated = self.codex(context+prompt, batch_size)
            for i in range(batch_size):
                input.append(context+prompt)
                input[i+batch*batch_size] = generated["choices"][i]["text"]+"\n}\n\n"
                
        for prompt in self.files[key][0][1:]:
            #print("new prompt")
            time.sleep(self.wait)
            for i in range(self.n_samples):
                input[i] = input[i] + prompt
            for batch in range(self.n_samples // batch_size):
                generated = self.codex(input[batch*batch_size: (batch+1)*batch_size], 1) # 150 000 tokens per min
                time.sleep(self.batch_wait)
                for j in range(batch_size):
                    input[batch*batch_size+j] = input[batch*batch_size+j] + generated["choices"][j]["text"] +"\n}\n\n"
                    if generated["choices"][j]["finish_reason"] == "length":
                        print(f"Finish reason length index {batch*batch_size+j}")
                        print(key)

        for i in range(self.n_samples):
            file_path = f'data/{self.provider}/codex-txt{self.file_name}/{key}/sample-{i}.txt'
            sample_file = open(file_path, "w")
            sample_file.write(input[i])
        
    def codex(self, input, samples):
        generated = openai.Completion.create(
                engine="code-davinci-002", #  code-cushman-001
                prompt= input,
                max_tokens = 1024, # 512
                top_p = 0.95,
                temperature=0.2,
                n = samples,
                stop = "\n}\n", # {}n
                echo = False )
        return generated
        # add resource, terraform, data, provider or {}\n\n as end token
def main():
    model = CodexModel("aws", n_samples=3, wait=5, temperature=0.2, file_name='')
    model.generate_samples()

if __name__ == "__main__":
    main()