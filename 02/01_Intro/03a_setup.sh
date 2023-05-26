#!/usr/bin/env bash
#
### Steps to build and run 0x_dockerfile
file=03a_dockerfile
image=base_img3a
# Build a dockerfile with tag -t
docker build -t "$image" -f "$file" .
# List images
docker image ls

