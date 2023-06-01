#!/usr/bin/env bash
#
### Steps to 01_dockerfile
PARAMS='01a_params.sh'
if [ ! -f $PARAMS ]; then  #??
    echo $PARAMS does not exist! #??
    exit 2  #??
  fi  #??
source $PARAMS

# stop container
docker container stop "$container"
docker ps -a

