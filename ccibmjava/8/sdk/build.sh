#!/bin/sh

docker build -t chaochuang/ccibmjava:8-sdk .
docker image tag chaochuang/ccibmjava:8-sdk chaochuang/ccibmjava:latest
