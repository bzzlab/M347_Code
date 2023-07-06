## Docker Compose
### What is YAML?
YAML = YAML Ain't Markup Language
With Datatypes:
* Scalars (Strings and Numbers)
* Sequences (Arrays and Lists)
* Mappings (Hashes and Dictionaries as Key-Value-Pairs)

### Create scripted services
1. Check if YAML-File is present
```
$ ls
docker-compose.yaml
```
2. Spin up services with docker compose. Of course the YAML-File should be present in the working directory!  
```
$ docker-compose up -d
[+] Running 34/2
 ✔ wordpress 21 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                 41.9s 
 ✔ db 11 layers [⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]      0B/0B      Pulled                                                                  32.0s 
[+] Running 5/5
 ✔ Network 00_demo_default           Created                                                                           0.1s 
 ✔ Volume "00_demo_wordpress_files"  Created                                                                           0.0s 
 ✔ Volume "00_demo_db_data"          Created                                                                           0.0s 
 ✔ Container mysql_database          Started                                                                           0.9s 
 ✔ Container wd_frontend             Started  
```
3. Check the created containers
```
$ docker ps -a
CONTAINER ID   IMAGE              COMMAND                  CREATED         STATUS                     PORTS                   NAMES
2170ab471a31   wordpress:latest   "docker-entrypoint.s…"   4 minutes ago   Up 4 minutes               0.0.0.0:8000->80/tcp    wd_frontend
a0504f6a1b5d   mysql:latest       "docker-entrypoint.s…"   4 minutes ago   Up 4 minutes               3306/tcp, 33060/tcp     mysql_database
...
```
4. Now open the browser on http://localhost:8000/
5. Further commands
```
$ docker ps
CONTAINER ID   IMAGE              COMMAND                  CREATED       STATUS       PORTS                  NAMES
2170ab471a31   wordpress:latest   "docker-entrypoint.s…"   5 hours ago   Up 5 hours   0.0.0.0:8000->80/tcp   wd_frontend   
a0504f6a1b5d   mysql:latest       "docker-entrypoint.s…"   5 hours ago   Up 5 hours   3306/tcp, 33060/tcp    mysql_database

# log files of the specific container
$ docker logs -f mysql_database 
# or 
$ docker logs -f wd_frontend
# the latest 10 log entries
$ docker logs -f mysql_database --tail=10 
# view running process of a container
$ docker top mysql_database
# Removes (or should remove) the multicontainer (including network)
$ docker-compose down 
