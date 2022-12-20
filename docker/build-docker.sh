#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-stealeum/stealeumd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/stealeumd docker/bin/
cp $BUILD_DIR/src/stealeum-cli docker/bin/
cp $BUILD_DIR/src/stealeum-tx docker/bin/
strip docker/bin/stealeumd
strip docker/bin/stealeum-cli
strip docker/bin/stealeum-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
