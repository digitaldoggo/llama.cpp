# docker build -f .devops/tools.Dockerfile -t llamacpp-tools .
docker run -v $(pwd)/models:/models llamacpp-tools --convert "/models/$MODEL/" 1
docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin" "/models/$MODEL/ggml-model-q4_0.bin" 2
docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.1" "/models/$MODEL/ggml-model-q4_0.bin.1" 2
docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.2" "/models/$MODEL/ggml-model-q4_0.bin.2" 2
docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.3" "/models/$MODEL/ggml-model-q4_0.bin.3" 2
# docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.4" "/models/$MODEL/ggml-model-q4_0.bin.4" 2
# docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.5" "/models/$MODEL/ggml-model-q4_0.bin.5" 2
# docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.6" "/models/$MODEL/ggml-model-q4_0.bin.6" 2
# docker run -v $(pwd)/models:/models llamacpp-tools --quantize "/models/$MODEL/ggml-model-f16.bin.7" "/models/$MODEL/ggml-model-q4_0.bin.7" 2