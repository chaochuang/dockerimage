#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccopenjdk:8-jdk-alpine -t chaochuang/ccopenjdk:8-sdk-alpine -t chaochuang/ccopenjdk:sdk-alpine . \
	&& docker image push chaochuang/ccopenjdk:8-jdk-alpine \
	&& docker image push chaochuang/ccopenjdk:8-sdk-alpine \
	&& docker image push chaochuang/ccopenjdk:sdk-alpine

cd "$origdir"
