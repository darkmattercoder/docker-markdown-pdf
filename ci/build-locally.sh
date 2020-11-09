#!/bin/sh
DOCKERHUB_USER=${1:-darkmattercoder}
IMAGE_NAME=${2:-"darkmattercoder/docker-markdown-pdf"}
TAG=${3:-"latest"}
./dockerhub-login.sh $DOCKERHUB_USER
./build-dockerimage.sh $IMAGE_NAME $TAG
./dockerhub-push.sh $IMAGE_NAME $TAG
./dockerhub-logout.sh
