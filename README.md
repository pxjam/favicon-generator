# Docker Image for Favicon Generation

## Usage

1. Create `io` directory
2. Put your initial image e.g. `input.svg` to this directory
3. Run command:

```shell
docker run \
	--name favicon-generator \
	--rm \
	--volume $(pwd)/io:/root/io \
	--env INPUT_IMG=input.svg \
	pxjam/real-favicon-generator
```

The output files goes to `io/output`.

Uses [Real Favicon Generator](https://github.com/RealFaviconGenerator/cli-real-favicon) \
My appreciation to its author.

## TODO

Mount config file to host system to make configuration easier
