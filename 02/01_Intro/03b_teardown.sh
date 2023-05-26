#!/usr/bin/env bash
#
### Steps AFTER 03a_teardown.sh
image=base_img3a
# Remove image
docker rmi "$image":latest
# check removal
docker image ls

