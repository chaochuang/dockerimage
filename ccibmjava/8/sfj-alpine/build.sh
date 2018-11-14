#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccibmjava:8-sfj-alpine -t chaochuang/ccibmjava:sfj-alpine . \
	&& docker image push chaochuang/ccibmjava:8-sfj-alpine \
	&& docker image push chaochuang/ccibmjava:sfj-alpine

cd "$origdir"
