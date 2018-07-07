FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

# Update apk repositories
# node, npm, yarn, make and g++ (make and g++ might be needed for some node-gyp)
# See http://pkgs.alpinelinux.org/packages?name=nodejs,
# http://pkgs.alpinelinux.org/packages?name=npm for available nodejs versions
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories && \
    echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk -U --no-cache add nodejs npm yarn \
        g++ make && \
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
