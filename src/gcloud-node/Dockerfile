FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

# Set Chromium binary paths
ENV CHROMIUM_BIN=/usr/bin/chromium-browser
ENV CHROMEDRIVER_BIN=/usr/bin/chromedriver
ENV CHROMIUM_PATH=/usr/lib/chromium

# Update apk repositories
# Node, NPM, Yarn
# See http://pkgs.alpinelinux.org/packages?name=nodejs-npm for available node versions
# Make and C++ compiler
# NOTE: This is here because some nodejs packages might require building using node-gyp
# Chromium
# See http://pkgs.alpinelinux.org/packages?name=chromium for available versions
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories && \
    echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk -U --no-cache add nodejs-npm yarn \
        g++ make \
        chromium chromium-chromedriver && \
    npm -g i npm && \
    apk del --purge --force linux-headers \
        binutils-gold \
        gnupg \
        zlib-dev \
        libc-utils \
        libc6-compat \
        py-crcmod && \
    rm -rf /var/cache/apk/* \
        /usr/share/man \
        /tmp/*
