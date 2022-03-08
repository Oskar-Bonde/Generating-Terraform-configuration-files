import os
import openai

openai.api_key = "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"

def get_context():
    return str(input())

if __name__ == "__main__":
    generated = openai.Completion.create(
        engine="code-cushman-001", #code-davinci-001
        prompt= get_context(),
        max_tokens = 256,
        top_p = 0.05,
        #temperature=0.1,
        n = 1,
        stop = "}\n\n"
    )
    text = generated["choices"][0]["text"]
    print(text)