#!/bin/bash

VERSION=$1
TARGET=$2
ARCH=$3

#cleanup
sh cleanup.sh $VERSION
#copy files to openwrt
sh copy_files.sh $VERSION $TARGET $ARCH
#build image
sh make.sh $VERSION