#!/usr/bin/env bash
#
### Steps AFTER 03a_setup.sh
file=03b_dockerfile
image=img3b
container=cont3b
# Build a dockerfile with tag -t
docker build -t "$image" -f "$file" .
sleep 1
# List images
docker image ls
# Run image with and name it (see variable)
docker run -itd --rm --name "$container" "$image"
sleep 1
# Show running containers
docker ps
sleep 1
# execute container
docker exec -it "$container" bash
# Navigate to /tmp and check if hello.txt is present
# show the content of hello.txt with cat

