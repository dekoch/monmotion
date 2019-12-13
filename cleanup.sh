#!/bin/bash

echo cleanup

VERSION=$1"/"
DST="./openwrt/"$VERSION"files/"

# cleanup dst
rm -r $DST
mkdir -p $DST