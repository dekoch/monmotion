#!/bin/bash

echo copy gou/ui files to openwrt

VERSION=$1"/"
TARGET=$2"/"
USER=$(id -u -n)
SRC="/home/"$USER"/go/src/github.com/dekoch/gouniversal/data/ui/"
DST="./files/root/gou/data/ui/"

mkdir -p $DST
# copy files from go dir
cp -r $SRC"backup/" $DST"backup/"
cp -r $SRC"console/" $DST"console/"
cp -r $SRC"logviewer/" $DST"logviewer/"
cp -r $SRC"program/" $DST"program/"
cp -r $SRC"static/" $DST"static/"