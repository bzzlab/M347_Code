### Steps for Demo-01
1. Build a dockerfile with tag -t
```docker build -t m347_i1 -f 01_dockerfile .```
2. List images
```docker image ls```
3. Run image with and name it m347_c1
```docker run -itd --rm --name m347_c1 m347_i1```
4. Start bash-shell in container
```docker exec -it m347_c1 bash```

