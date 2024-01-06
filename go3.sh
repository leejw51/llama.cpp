#python convert.py models/my/
python convert-hf-to-gguf.py models/my/

quantize ./models/my/ggml-model-f16.gguf ./models/my/ggml-model-q4_0.gguf q4_0

#quantize ./models/my/ggml-model-q4_0.gguf ./models/my/ggml-model-q4_0-v2.gguf COPY

#./build/bin/main -m ./models/my/ggml-model-q4_0.gguf -n 128 --interactive-first
#./build/bin/main -m ./models/my/ggml-model-q4_0.gguf -n -2 -p "A dialog, where User interacts with AI.\nAnsower once\n AI is helpful, kind, obedient, honest, and knows its own limits.\nUser: Hello, AI.\nAI: Hello! How can I assist you today?\nUser:Where is Hongkong? <|im_end|> \nAI:" -e
