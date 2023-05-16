#!/bin/bash
# Build
docker build -t m347_i1 -f 01_dockerfile .
# List images
docker image ls
# run
docker run -itd --rm --name m347_c1 m347_i1
# exec
docker exec -it m347_c1 bash
# stop container
docker stop m347_c1
# Remove image
docker rmi m347_i1:latest
# check removal
docker image ls |grep "m347_i1"
