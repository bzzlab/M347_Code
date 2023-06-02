### Searching images
1. Search all images (see also https://docs.docker.com/engine/reference/commandline/search/)
```
docker search python:3.10 --filter is-official=false
docker search ubuntu:20.04 --filter stars=1
```
2. Search and output result in formatted manner (see also https://docs.docker.com/engine/reference/commandline/search/#format)
```
docker search --format "table {{.Name}}\t{{.Description}}\t{{.IsOfficial}}\t{{.StarCount}}" registry
```
### Pull an image
1. Pull latest version of nginx
```docker image pull nginx:latest```
2. Pull alpine-Unix version of nginx
```docker image pull nginx:alpine```
3. Pull nginx with all tags (Ctrl+C for stop pulling)
```docker image pull --all-tags nginx```

### Listing images
1. List all images
```
docker images
or
docker image ls
```
2. List all nginx images
```docker images nginx```
