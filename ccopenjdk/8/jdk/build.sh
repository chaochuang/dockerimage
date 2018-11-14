#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccopenjdk:8-jdk -t chaochuang/ccopenjdk:8-sdk -t chaochuang/ccopenjdk:sdk -t chaochuang/ccopenjdk:latest . \
	&& docker image push chaochuang/ccopenjdk:8-jdk \
	&& docker image push chaochuang/ccopenjdk:8-sdk \
	&& docker image push chaochuang/ccopenjdk:sdk \
	&& docker image push chaochuang/ccopenjdk:latest

cd "$origdir"
