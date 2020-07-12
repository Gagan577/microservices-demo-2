#!/bin/bash

set -e

SCRIPT_DIR=$(dirname "$0")
CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)

if [ -z "$TAG" ]; then
  TAG="latest"
fi

if [ -z "$REPO" ]; then
  REPO="microservices-demo"
fi

docker build -f $CODE_DIR/Dockerfile \
  -t $REPO/watchn-catalog:$TAG $CODE_DIR