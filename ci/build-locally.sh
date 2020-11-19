#!/bin/sh
set -x
set -e
DOCKERHUB_USER=${1:-darkmattercoder}
IMAGE_NAME=${2:-"darkmattercoder/docker-markdown-pdf"}
TAG=${3:-"latest"}
BUILD_FILE=${4:-"test.md"}
# ./dockerhub-login.sh $DOCKERHUB_USER 
./build-dockerimage.sh $IMAGE_NAME $TAG
./test-dockerimage.sh $IMAGE_NAME $TAG $BUILD_FILE
# ./dockerhub-push.sh $IMAGE_NAME $TAG
# ./dockerhub-logout.sh
