#./compile.sh
#./finetune.sh

# get f16
python convert.py ./finetuning/mymodel
./build/bin/quantize ./finetuning/mymodel/ggml-model-f16.gguf ./finetuning/mymodel/ggml-model-q4_0.gguf q4_0
echo "Quantized model is ggml-model-q4_0.gguf"
#cp ./finetuning/mymodel/ggml-model-q4_0.gguf . 
cp ./finetuning/mymodel/ggml-model-q4_0.gguf ~/models/ 
echo "copied to ~/models"
echo "cp ./finetuning/mymodel/ggml-model-q4_0.gguf ." 
echo "use https://github.com/oobabooga/text-generation-webui to run the model"
echo "copy ggml-model-q4_0.gguf to text-generation-webui/models"
