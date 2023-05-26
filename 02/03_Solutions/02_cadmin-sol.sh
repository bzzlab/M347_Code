<<'###'
Aufgabe: Container verwalten (02_cadmin.sh)
Programmieren Sie ein Bash-Script, welches benutzergeführt Container aus dem
Dockerfile 02_dockerfile erzeugt, startet und löscht. Als Hilfestellung dienen
die Test-Aufrufe und der Pseudocode.

Test:
λ ./02_cadmin.sh
Container ([c]reate, [s]how, [d]elete Container and Image, [r]emove Image): c
Your Request : c
Create container
<Dockerfile> <image-name> <container-name>: 02_dockerfile im2 co2
...
root@90b577b686e8:/#

λ ./02_cadmin-sol.sh
Container ([c]reate, [s]how, [d]elete Container and Image, [r]emove Image): s
Your Request : s
Show images, running container
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
m347_im2     latest    6edff48ff27a   13 days ago   79.6MB
CONTAINER ID   IMAGE      COMMAND   CREATED          STATUS          PORTS     NAMES
e92e7c7cc636   m347_im2   "bash"    40 seconds ago   Up 39 seconds             m347_co2

λ ./02_cadmin-sol.sh
Container ([c]reate, [s]how, [d]elete Container and Image, [r]emove Image): d
Your Request : d
Delete container and image
m347_co2
Untagged: m347_im2:latest
Deleted: sha256:6edff48ff27aeb16af9e078161acc6b6bfb4bbbdd0a6a7e20602687263f7fdb5
###

#!/bin/bash
#
#
# function that creates container with 3 arguments (s. Error-Meldung)
function create {
  # if less than 3 arguments then
  if test $# -lt 3; then #??
    # show appropriate error
    echo "Error: Three arguments are required: <Dockerfile> <image-name> <container-name>"
    echo "Exit script."
    exit 1 #??
  fi #??

  # set local variables
  local file=$1 #??
  local image="m347_"$2 #??
  local container="m347_"$3  #??
  # check if file does exist
  if [ ! -f $file ]; then  #??
    echo $file does not exist! #??
    exit 2  #??
  fi  #??
  # check if image and container name are empty
  if [[ -z "$image" || -z "$container" ]]; then  #??
    echo "Image or container name is empty!"
    exit 3
  fi #??

  # Build container
  docker build -t "$image" -f "$file" .  #??
  # Run container
  docker run -itd --rm --name "$container" "$image"  #??
  # Execute container
  docker exec -it "$container" bash  #??
}

# Funktion die Images und laufenden Container
function show {
  # List images
  docker image ls  #??
  # List running container
  docker ps  #??
}

# Function that deletes images and running containes
function delete {
  # get image name from docker
  local image=$(docker ps | tail -n +2 | xargs | cut -d' ' -f2)   #??
  # get container name from docker
  local container=$(docker ps | tail -n +2 | xargs | cut -d' ' -f10) #??
  # stop container
  docker stop "$container" #??
  # Remove image
  docker rmi "$image":latest #??
  # check removal
  docker image ls | grep "$image" #??
}

function removeOnlyImage {
  # check required parameter
  if test $# -lt 1; then #??
    # show appropriate error
    echo "Error: Following argument is required: <image-name>"
    echo "Exit script."
    exit 1  #??
  fi  #??
  # set local variables
  local image=$1 #??
  # Remove image
  docker rmi "$image":latest #??
  # check removal
  docker image ls | grep "$image" #??
}

# Ask user for action and read it
read -p "Container ([c]reate, [s]how, [d]elete Container and Image, [r]emove Image): " action
action=$(echo $action | tr '[A-Z]' '[a-z]') #??
# show selected action
echo "Your Request : $action" #??
# case/switch
case $action in  #??
c | create)
  echo "Create container" #??
  read -p "<Dockerfile> <image-name> <container-name>: " dfile img cont  #??
  create "$dfile" "$img" "$cont"  #??
  ;;  #??
s | show)
  echo "Show images, running container" #??
  show  #??
  ;;  #??
d | delete)
  echo "Delete container and image" #??
  delete  #??
  ;;  #??
r | remove)
  echo "Delete only image" #??
  read -p "<image-name>: " img  #??
  removeOnlyImage "$img"  #??
  ;;  #??
*)
  echo "Incorrect action entered!"
  ;;  #??
esac  #??
# Script's end
