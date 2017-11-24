#!/usr/bin/env bash
# Exit on error
set -e

# Build docker image as latest
# $1 - image name
# $2 - image path
docker build -t rolandjitsu/$1:latest $2
