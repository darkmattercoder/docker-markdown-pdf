#!/bin/sh
IMAGE_NAME=${1:-"darkmattercoder/docker-markdown-pdf"}
TAG=${2:-"latest"}
docker push $IMAGE_NAME:$TAG
