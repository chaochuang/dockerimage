#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/ccibmjava:8-sdk -t chaochuang/ccibmjava:sdk -t chaochuang/ccibmjava:latest . \
	&& docker image push chaochuang/ccibmjava:8-sdk \
	&& docker image push chaochuang/ccibmjava:sdk \
	&& docker image push chaochuang/ccibmjava:latest

cd "$origdir"
