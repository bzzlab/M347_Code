#!/bin/bash
# Build
docker build -t m347_i2 -f 02b_dockerfile .
# List images
docker image ls
# run
docker run -itd --rm --name m347_c2 m347_i2
# exec
docker exec -it m347_c2 bash
# stop container
docker stop m347_c2
# Remove image
docker rmi m347_i2:latest
# check removal
docker image ls |grep "m347_i2"
