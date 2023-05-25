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
    # show appropriate error
    echo "Error: Three arguments are required: <Dockerfile> <image-name> <container-name>"
    echo "Exit script."
  # set local variables
  # check if file does exist
  # check if image and container name are empty
    echo "Image or container name is empty!"
    exit 3
  # Build container
  # Run container
  # Execute container
}
# Funktion die Images und laufenden Container
function show {
  # List images
  # List running container
}
# Function that deletes images and running containes
function delete {
  # get image name from docker
  # get container name from docker
  # stop container
  # Remove image
  # check removal
}
function removeOnlyImage {
  # check required parameter
    # show appropriate error
    echo "Error: Following argument is required: <image-name>"
    echo "Exit script."
  # set local variables
  # Remove image
  # check removal
}
# Ask user for action and read it
read -p "Container ([c]reate, [s]how, [d]elete Container and Image, [r]emove Image): " action
# show selected action
# case/switch
c | create)
s | show)
d | delete)
r | remove)
*)
  echo "Incorrect action entered!"
# Script's end
