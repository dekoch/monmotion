#!/bin/bash

echo copy files to openwrt

VERSION=$1"/"
TARGET=$2"/"
ARCH=$3"/"
DST="./openwrt/"$VERSION"files/"

# copy files dir
cp -r "./files/"* $DST
# copy arch specific files
cp -r "./files_arch/"$ARCH* $DST
# copy target specific files
cp -r "./files_target/"$TARGET* $DST
# copy openwrt .config
cp "./openwrt_config/"$VERSION"/targets/"$TARGET".config" "./openwrt/"$VERSION