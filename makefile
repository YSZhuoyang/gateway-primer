
services:
	cd contracts && make build
	cd go-service && make all && docker build -t go-service .
	docker build -f dotnet-service/Dockerfile .


client:
	cd web-client && \
	make get && \
	make gen && \
	yarn build

all:
	make services
	make client
