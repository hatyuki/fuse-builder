#!/bin/sh -e

if [ ! $FUSE_VERSION ]; then
    echo '$FUSE_VERSION is required!'
    exit 1
fi

wget -qO - https://github.com/libfuse/libfuse/releases/download/fuse-${FUSE_VERSION}/fuse-${FUSE_VERSION}.tar.gz | tar zxf - -C . --strip-components 1

./configure && make
