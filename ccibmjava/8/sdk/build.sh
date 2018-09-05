#!/bin/sh

docker build -t chaochuang/ccibmjava:8-sdk -t chaochuang/ccibmjava . \
	&& docker image push chaochuang/ccibmjava:8-sdk \
	&& docker image push chaochuang/ccibmjava
