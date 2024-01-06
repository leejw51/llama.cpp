python3 convert.py models/my/
./build/bin/quantize ./models/my/ggml-model-f16.gguf ./models/my/ggml-model-q4_0.gguf q4_0
./build/bin/quantize ./models/my/ggml-model-q4_0.gguf ./models/my/ggml-model-q4_0-v2.gguf COPY
./build/bin/main -m ./models/my/ggml-model-q4_0.gguf -n 128
#./build/bin/main -m ./models/my/ggml-model-q4_0.gguf -n 128 --interactive-first
