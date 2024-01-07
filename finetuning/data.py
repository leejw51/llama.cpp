from datasets import load_dataset

#dataset_name = "mlabonne/guanaco-llama2-1k"
#dataset_name= "elliotthwang/guanaco-llama2-chinese-1k"
#dataset_name="baohuynhbk14/vietnamese-guanaco-llama2-1k"
dataset_name= "maywell/korean_textbooks"
dataset=load_dataset(dataset_name,"tiny-textbooks")
dataset['train'] = dataset['train'].select(range(1000))
print(dataset)



# Displaying the first entry of the dataset
print("First entry:", dataset['train'][0])

# Displaying the last entry of the dataset
print("Last entry:", dataset['train'][-1])