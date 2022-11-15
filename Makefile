build:
	docker buildx create --use
	docker buildx build \
		--platform linux/amd64,linux/arm64 \
		-t pxjam/favicon-generator:latest .

run:
	docker run \
		--name favicon-generator \
		--rm \
 		--volume `pwd`/io:/root/io \
 		--env INPUT_IMG=input.svg \
 		pxjam/favicon-generator
