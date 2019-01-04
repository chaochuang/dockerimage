#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

docker build -t chaochuang/mysql:5.7 -t chaochuang/mysql:5 . \
	&& docker image push chaochuang/mysql:5.7 \
	&& docker image push chaochuang/mysql:5

cd "$origdir"
