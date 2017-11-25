FROM google/cloud-sdk:alpine

LABEL maintainer="rolandjitsu@gmail.com"

# Update apk repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN echo "http://dl-2.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Node
# See http://pkgs.alpinelinux.org/packages?name=nodejs for available versions
# NOTE: Latest node is only available on the @edge branch,
# hence the install from repo.
ENV NODE_VERSION 8.9.1-r0
RUN apk -U --no-cache add nodejs==${NODE_VERSION}

# Yarn
# See http://pkgs.alpinelinux.org/packages?name=yarn for available versions
ENV YARN_VERSION 1.3.2-r0
RUN apk -U --no-cache add yarn==${YARN_VERSION}

# Chromium
# See http://pkgs.alpinelinux.org/packages?name=chromium for available versions
ENV CHROMIUM_VERSION 61.0.3163.100-r0
RUN apk -U --no-cache add libwebp \
    harfbuzz \
    chromium==${CHROMIUM_VERSION}

# Set Chromium binary path
ENV CHROMIUM_BIN=/usr/bin/chromium-browser
ENV CHROMIUM_PATH=/usr/lib/chromium/

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

# Check binaries
RUN echo "Chromium $(chromium-browser --product-version)"
RUN echo "gcloud $(gcloud --version)"
RUN echo "node $(node --version)"
RUN echo "npm $(npm --version)"
RUN echo "yarn $(yarn --version)"
