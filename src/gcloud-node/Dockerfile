FROM google/cloud-sdk:alpine

# Node
# See http://pkgs.alpinelinux.org/packages?name=nodejs for available versions
# NOTE: Latest node is only available on the @edge branch,
# hence the install from repo.
ENV NODE_VERSION 8.9.1-r0
RUN apk update && \
    apk add --update-cache nodejs==${NODE_VERSION} \
        --repository http://nl.alpinelinux.org/alpine/edge/main

# Yarn
# See http://pkgs.alpinelinux.org/packages?name=yarn for available versions
ENV YARN_VERSION 1.3.2-r0
RUN apk update && \
    apk add --update-cache yarn==${YARN_VERSION} \
        --repository http://nl.alpinelinux.org/alpine/edge/community

# Check binaries
RUN echo "gcloud $(gcloud --version)"
RUN echo "node $(node --version)"
RUN echo "npm $(npm --version)"
RUN echo "yarn $(yarn --version)"
