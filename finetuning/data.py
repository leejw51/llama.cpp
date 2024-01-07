from datasets import load_dataset

#dataset_name = "mlabonne/guanaco-llama2-1k"
#dataset_name= "elliotthwang/guanaco-llama2-chinese-1k"
dataset_name="baohuynhbk14/vietnamese-guanaco-llama2-1k"
dataset=load_dataset(dataset_name)
print(dataset)

# First entry in the dataset
first_entry = dataset['train'][0]
print("First Entry:", first_entry)

# Last entry in the dataset
last_entry = dataset['train'][-1]
print("Last Entry:", last_entry)
