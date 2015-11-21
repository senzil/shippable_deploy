#!/bin/bash -e
VERSION=`cat VERSION`
TAG="senzil/shippable_deploy:$VERSION"
echo "Building $TAG"
docker build --rm -t $TAG .