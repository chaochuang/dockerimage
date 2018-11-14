#!/bin/sh

origdir=`pwd`

rootdir=`dirname $0`
rootdir=`cd "$rootdir" ; pwd`

cd "$rootdir"

find . -name "build.sh" | xargs -n 1 bash

cd "$origdir"
