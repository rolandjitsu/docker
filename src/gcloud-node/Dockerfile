FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

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

# Chrome
# See http://pkgs.alpinelinux.org/packages?name=chromium for available versions
# TODO: Try to make the image a bit slimmer
ENV CHROMIUM_VERSION 61.0.3163.100-r0
RUN apk update && \
    apk add --update-cache \
    --repository http://nl.alpinelinux.org/alpine/edge/main \
    libwebp \
    harfbuzz
RUN apk update && \
    apk add --update-cache \
        --repository http://nl.alpinelinux.org/alpine/edge/community \
        chromium==${CHROMIUM_VERSION}

# Check binaries
RUN echo "Chromium $(chromium-browser --product-version)"
RUN echo "gcloud $(gcloud --version)"
RUN echo "node $(node --version)"
RUN echo "npm $(npm --version)"
RUN echo "yarn $(yarn --version)"
