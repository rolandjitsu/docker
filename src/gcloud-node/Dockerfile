FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

# Update apk repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Node
# See http://pkgs.alpinelinux.org/packages?name=nodejs for available node versions
RUN apk -U --no-cache add nodejs

# Make and C++ compiler
# NOTE: This is here because some nodejs packages might require building using node-gyp
RUN apk -U --no-cache add g++ make

# Chromium
# See http://pkgs.alpinelinux.org/packages?name=chromium for available versions
RUN apk -U --no-cache add chromium \
    chromium-chromedriver

# Set Chromium binary paths
ENV CHROMIUM_BIN=/usr/bin/chromium-browser
ENV CHROMEDRIVER_BIN=/usr/bin/chromedriver
ENV CHROMIUM_PATH=/usr/lib/chromium

# Minimize image size
RUN apk del --purge --force linux-headers \
    binutils-gold \
    gnupg \
    zlib-dev \
    libc-utils \
    libc6-compat \
    py-crcmod
RUN rm -rf /var/cache/apk/* \
    /usr/share/man \
    /tmp/*
