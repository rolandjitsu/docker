# GCloud & Node

> Alpine image with [gcloud](https://cloud.google.com/sdk/gcloud), [node](https://nodejs.org) and [Chromium](https://www.chromium.org/Home).


### Usage
---------
This image also provides a [Yarn](https://yarnpkg.com) binary.

Pull the image and ssh into the container:
```bash
docker run -ti --rm --entrypoint bash rolandjitsu/gcloud-node
```

Or use it as a base image:
```dockerfile
FROM rolandjitsu/gcloud-node

RUN gcloud --version
```
