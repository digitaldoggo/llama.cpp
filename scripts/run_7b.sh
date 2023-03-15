docker build -f .devops/main.Dockerfile -t llamacpp-main .
docker run -v $(pwd)/models:/models llamacpp-main -m /models/7B/ggml-model-q4_0.bin -p "Building a website can be done in 10 simple steps:" -t 8 -n 512
docker run -v $(pwd)/models:/models llamacpp-main -m /models/7B/ggml-model-q4_0.bin -p "Becoming a software engineer can be done in these 5 simple steps:" -t 8 -n 512