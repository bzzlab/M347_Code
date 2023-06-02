### Exercise 4: Push and Pull to your registry 
1. Login first with your browser on hub.docker.com 
2. Create a public repo with the name-pattern: 
```
<module>-<shortname> 
i.e. m347-gada 
```
3. Select an image on your local machine that works. Build and test it.
4. Tag the image and push it to your registry
```
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
```
5. Stop and remove container and image on your local machine
6. Pull your pushed image on your local machine and redo Step 6.
