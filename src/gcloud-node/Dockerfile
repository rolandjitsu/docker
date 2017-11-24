FROM google/cloud-sdk:alpine

# Node
# See http://pkgs.alpinelinux.org/packages?name=nodejs for available versions
# NOTE: Latest node is only available on the @edge branch,
# hence the install from repo.
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.9.1

RUN apk update && \
    apk add --update-cache nodejs --repository http://nl.alpinelinux.org/alpine/edge/main

# Check binaries
RUN echo "gcloud $(gcloud --version)"
RUN echo "node $(node --version)"
RUN echo "npm $(npm --version)"
