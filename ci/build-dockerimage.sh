#!/bin/sh
IMAGE_NAME=${1:-"darkmattercoder/docker-markdown-pdf"}
TAG=${2:-"latest"}
DOCKERFILE=${3:-".."}
docker build -t $IMAGE_NAME:$TAG $DOCKERFILE
