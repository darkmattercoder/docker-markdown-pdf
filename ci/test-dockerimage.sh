#!/bin/sh
IMAGE_NAME=${1:-"darkmattercoder/docker-markdown-pdf"}
TAG=${2:-"latest"}
BUILD_FILE=${3:-"test.md"}
docker run -u $(id -u) --rm -v $PWD:/doc $IMAGE_NAME:$TAG markdown-pdf $BUILD_FILE
