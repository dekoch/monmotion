#!/bin/bash

VERSION="master"
TARGET="brcm2708/bcm2711"
ARCH="aarch64"

sh build.sh $VERSION $TARGET $ARCH


echo copy image to releases

SRC="./openwrt/"$VERSION"/bin/targets/"$TARGET"/"
DST="./releases/"$TARGET"/"$VERSION"/"

mkdir -p $DST
cp -r $SRC"openwrt-brcm2708-bcm2711-rpi-4-ext4-factory.img.gz" $DST
cp -r $SRC"openwrt-brcm2708-bcm2711-rpi-4-ext4-sysupgrade.img.gz" $DST