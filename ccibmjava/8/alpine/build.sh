#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccibmjava:8-sdk-alpine -t chaochuang/ccibmjava:sdk-alpine . \
	&& docker image push chaochuang/ccibmjava:8-sdk-alpine \
	&& docker image push chaochuang/ccibmjava:sdk-alpine

cd "$origdir"
