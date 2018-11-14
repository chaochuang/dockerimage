#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccibmjava:8-sfj -t chaochuang/ccibmjava:sfj . \
	&& docker image push chaochuang/ccibmjava:8-sfj \
	&& docker image push chaochuang/ccibmjava:sfj

cd "$origdir"
