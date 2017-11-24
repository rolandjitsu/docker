# Docker Images

> A collection of usefuly [Docker](https://www.docker.com) images.


### Images
----------
Within this repo, the following images can be found:

* [gcloud-node](src/gcloud-node)


### Contribute
--------------
1. Just add the image under `./src`
2. Build it
```bash
docker build -t rolandjitsu/<image name>:<tag> ./src/<image name>
```
3. Login
```bash
docker login
```
4. Push it
```bash
docker push rolandjitsu/<image name>:<tag>
```
