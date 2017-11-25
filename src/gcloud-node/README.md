# GCloud & Node

> Alpine image with [gcloud](https://cloud.google.com/sdk/gcloud) and [node](https://nodejs.org).


### Usage
---------
Besides [gcloud](https://cloud.google.com/sdk/gcloud) and [node](http://pkgs.alpinelinux.org/packages?name=nodejs), this image also provides latest available binaries for:

* [Yarn](https://yarnpkg.com)
* [Chromium](http://pkgs.alpinelinux.org/packages?name=chromium)

Pull the image and ssh into the container:
```bash
docker run -ti --rm --entrypoint bash rolandjitsu/gcloud-node
```

Or use it as a base image:
```dockerfile
FROM rolandjitsu/gcloud-node

RUN gcloud --version
```
