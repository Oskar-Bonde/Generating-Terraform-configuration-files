from codex_gen import CodexModel

if __name__=='__main__':

    T = [0, 0.2, 0.4, 0.6, 0.8]
    for temp in T:
        model = CodexModel("aws", n_samples=60, wait=60, temperature=temp, file_name=f'-{temp}' )
        model.generate_samples()