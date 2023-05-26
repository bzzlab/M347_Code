#!/usr/bin/env bash
#
### Steps to 01_dockerfile
image=img3b
container=cont3b
# stop container
docker stop "$container"
sleep 3
# Remove container
id=$(docker ps -a |tail -n +2|xargs|cut -d' ' -f1)
docker rm "$id"
# Remove image
docker rmi "$image":latest
# check removal
docker image ls |grep "$image"

