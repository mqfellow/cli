#!/bin/sh
VERSION=`cat Version.md`
echo $VERSION
docker rmi -f mqfellow/cli:$VERSION
docker build -t mqfellow/cli:$VERSION .
