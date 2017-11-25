FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

# Update apk repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# JDK
# See http://pkgs.alpinelinux.org/packages?name=openjdk8-jre for available versions
RUN apk -U --no-cache add openjdk8-jre

# Node
# See http://pkgs.alpinelinux.org/packages?name=nodejs for available versions
# NOTE: Latest node is only available on the @edge branch,
# hence the install from repo.
RUN apk -U --no-cache add nodejs

# Yarn
# See http://pkgs.alpinelinux.org/packages?name=yarn for available versions
RUN apk -U --no-cache add yarn

# Chromium
# See http://pkgs.alpinelinux.org/packages?name=chromium for available versions
RUN apk -U --no-cache add chromium \
    chromium-chromedriver

# Set Chromium binary path
ENV CHROMIUM_BIN=/usr/bin/chromium-browser
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
