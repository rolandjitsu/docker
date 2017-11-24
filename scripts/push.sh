#!/usr/bin/env bash
# Exit on error
set -e

IMAGE_NAME=$1
IMAGE_PATH=$2
IMAGE_VERSION=$3

if [ -z "${IMAGE_NAME}" ] || [ -z "${IMAGE_VERSION}" ] || [ ! -d "${IMAGE_PATH}" ]; then
    echo "Image name or version was not provided, or path to image does not exist :("
    exit 1
else
    # Build image
    ./scripts/build.sh ${IMAGE_NAME} ${IMAGE_PATH}
    # Tag the image
    # NOTE: Tags with latest and proper version
    docker tag rolandjitsu/${IMAGE_NAME}:latest rolandjitsu/${IMAGE_NAME}:${IMAGE_VERSION}
    # Push the image
    docker push rolandjitsu/${IMAGE_NAME}:${IMAGE_VERSION}
    docker push rolandjitsu/${IMAGE_NAME}:latest
fi
