#!/usr/bin/env bash
#
### Steps to 01_dockerfile
image=m347_iexer
container=m347_cexer

# stop container
docker stop "$container"
sleep 3
# Remove container
id=$(docker ps -a |tail -n +2|xargs|cut -d' ' -f15)
docker rm "$id"
# Remove image
docker rmi "$image":latest
# check removal
docker image ls |grep "$image"

