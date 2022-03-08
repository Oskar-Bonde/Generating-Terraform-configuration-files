import os

def walk_tree():
    i = -1
    for root, dirs, files in os.walk('raw-data/hashicorp-certified-terraform'):
        new_file = True
        for file in files:
            if file[-3:] == ".tf":
                if new_file == True:
                    i +=1
                    new_file = False
                    txt_file = open("data/file-"+str(i)+".txt", "w")
                    txt_file.write("# "+root+"\n")
                tf_file = open(os.path.join(root, file))            
                txt_file.write(tf_file.read()+"\n\n")
        if new_file == False:
            txt_file.close()

if __name__ == "__main__":
    walk_tree()