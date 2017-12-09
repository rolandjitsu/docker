# GCloud & Node

> Alpine image with [gcloud](https://cloud.google.com/sdk/gcloud) and [node](https://nodejs.org).


### Usage
---------
Besides [gcloud](https://cloud.google.com/sdk/gcloud) and [node](http://pkgs.alpinelinux.org/packages?name=nodejs), this image also provides latest available binaries for:

* [Chromium](http://pkgs.alpinelinux.org/packages?name=chromium)
* [Make](http://pkgs.alpinelinux.org/packages?name=make)
* [G++](http://pkgs.alpinelinux.org/packages?name=g%2B%2B)

Pull the image and ssh into the container:
```bash
docker run -ti --rm --entrypoint bash rolandjitsu/gcloud-node
```

Or use it as a base image:
```dockerfile
FROM rolandjitsu/gcloud-node

RUN gcloud --version
```
