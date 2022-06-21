from transformers import AutoTokenizer
import os 

def add_space(tokenizer):
    space = '  '
    for i in range(6):
        tokenizer.add_tokens( [ space ] )
        space += '  '
    return tokenizer

def main():
    codeparrot = AutoTokenizer.from_pretrained('lvwerra/codeparrot-small')
    gpt2 = AutoTokenizer.from_pretrained('gpt2')
    codex = AutoTokenizer.from_pretrained('gpt2')
    codex = add_space(codex)
    
    for tokenizer in [codeparrot, gpt2, codex]:
        total_tokens = 0
        total_characters = 0
        
        for provider in ['aws', 'aws-easy', 'gcp', 'gcp-easy', 'azure', 'azure-easy']:
            for task in sorted(os.listdir(f'data/{provider}/human-txt')):
                with open(f'data/{provider}/human-txt/{task}', 'r', encoding='utf-8', errors='ignore') as file:
                    text = file.read()
                    tokens = tokenizer(text, return_tensors="pt")
                    total_tokens += tokens.input_ids.shape[-1]
                    total_characters += len(text)
        print(f'------------------------------')
        print(f'Total tokens: {total_tokens}')
        print(f'Total characters: {total_characters}')
        print(f'Characters per token: {total_characters/total_tokens}')
        print(len(tokenizer))

if __name__ == "__main__":
    main()




