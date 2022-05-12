from codex_gen import CodexModel

if __name__=='__main__':

    T = [0, 0.4, 0.6, 0.8]
    for temp in T:
        print(temp)
        model = CodexModel("aws", n_samples=60, wait=25, temperature=temp, batch_size=20, file_name=f'-{temp}' )
        model.generate_samples()