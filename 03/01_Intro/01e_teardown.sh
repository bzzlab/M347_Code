#!/usr/bin/env bash
#
### Steps to 01_dockerfile
PARAMS='01a_params.sh'
if [ ! -f $PARAMS ]; then  #??
    echo $PARAMS does not exist! #??
    exit 2  #??
  fi  #??
source $PARAMS

# Remove container
id=$(docker ps -a |tail -n +2|xargs|cut -d' ' -f15)
docker rm "$id"
# Remove image
docker rmi "$image":latest
# check removal
docker image ls |grep "$image"

