# Python Development

## Instructions

```
docker pull <repo>
./run.sh

docker exec -it -u dpw bash -l <image>
```


## To Do 

* [x] create vers3.12
* [ ] add network to run script

## Bugs

* [x] copy keys needs to set the user group
* [x] should install bpython with pipx to get the correct version
* [x] push image to docker hub (made public
* [x] osx build: tar uses the incorrect user/group when creating the tar file.  need to force it to 1000:1000 to match user (don't build on osx)
* [x] change .motd banner to python 3.11 (correct version)
* [x] add .ssh/known_hosts to home/dpw/
* [x] run.sh broken missing full image name

###### dpw | 2023.11.10

