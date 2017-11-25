# Docker Images

> A collection of useful [Docker](https://www.docker.com) images.


### Images
----------
Within this repo, the following images can be found:

* [gcloud-node](src/gcloud-node)


### Contribute
--------------
1. Just add the image under `./src`
2. And use the following script to push the image to the Docker [registry](https://hub.docker.com):
```bash
./scripts/push.sh <image name> <image path> <image version>
```

**NOTE**: The script will push the version tag and the `latest` tag.

Alternatively you can manually build and push:
1. Build it
```bash
docker build -t rolandjitsu/<image name>:<tag> ./src/<image name>
```
2. Push it
```bash
docker push rolandjitsu/<image name>:<tag>
```

**NOTE**: Don't forget to login:
```bash
docker login
```
