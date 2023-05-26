#!/usr/bin/env bash
#
### Steps to build and run 0x_dockerfile
file=01_dockerfile
image=m347_iexer
container=m347_cexer
# Build a dockerfile with tag -t
docker build -t "$image" -f "$file" .
# List images
docker image ls
# Run image with specific name
docker run --name "$container" "$image"
