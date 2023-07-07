### Aufgabe 1: Bind mounts erstellen und testen
#### Pre-requisits
Sie haben bereits ein ubuntu Image von hub.docker.com gepulled, 
um damit den ubuntu-Container zu starten.

#### Aufgabenstellung
1. Wechseln Sie in Ihr HOME und erstellen Sie ein Verzeichnis data 
1. Starten Sie einen Container con_<IhrKürzel>, wobei Sie data-Verzeichnis aus Ihrem HOME
über bind mount mit dem tmp-Verzeichnis im Container verbinden.
2. Testen Sie, ob der Container und bind mount erzeugt wurden.
3. Erstellen Sie eine leere Datei im tmp-Verzeichnis.
4. Überprüfen Sie auf Ihrem Host-Rechner, ob die Datei auch data-Verzeichnis erscheint.
5. Erstellen Sie eine weitere leere Datei im data-Verzeichnis. 
6. Überprüfen Sie im Container, ob die Datei auch tmp-Verzeichnis erscheint.
7. Löschen Sie alle erzeugten Ressourcen, um Seiteneffekte für neue Übungen zu vermeiden


#### Lösungsvorschlag
1. Create in your HOME an empty directory data. 
Then Run a container cont_muha and bind mount the directory 
bind-data with the container on /tmp.
```
$ cd;pwd #change to HOME and show path
$ mkdir bind-data
$ docker run -itd \
    --name con_muha \
    --mount type=bind,source="/c/Users/info/data",target=/tmp \
    ubuntu:latest
42a026a9de80da726cd3683b04ff7a88673cc1c3316665ff79563547a90aa028
```
2. Check availability of the container
```
$ docker ps -a
CONTAINER ID   IMAGE           COMMAND                  CREATED         STATUS            NAMES    
42a026a9de80   ubuntu:latest   "/bin/bash"              9 seconds ago   Up 8 seconds      con_muha 
```
3. Access the container by executing the bash-shell, 
then touch /tmp/foo.txt 
```
$  docker exec -it con_muha bash
root@42a026a9de80:/# touch /tmp/foo.txt
root@42a026a9de80:/# cd tmp/
root@42a026a9de80:/tmp# ls
foo.txt                 
root@42a026a9de80:/tmp# 
```
4. Now check in a second shell on the host computer if
the touched file exists
```
$ cd #change to HOME
$ cd data/      
$ ls                           
foo.txt
```
5. Now touch on the host computer a new file
```
$ touch foo2.txt
```
6. Check now in the container if the new file exists
```
root@42a026a9de80:/tmp# ls
foo.txt  foo2.txt 
```