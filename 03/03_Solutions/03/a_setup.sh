#!/usr/bin/env bash
#
### Steps to build and run 0x_dockerfile
PARAMS='params.sh'
if [ ! -f $PARAMS ]; then  #??
    echo $PARAMS does not exist! #??
    exit 2  #??
  fi  #??
source $PARAMS
# Build a dockerfile with tag -t
docker build -t "$image" -f "$file" .
# List images
docker image ls
# Run image with specific name
docker run --rm -itd --name "$container" -p 5000:5000 "$image"


