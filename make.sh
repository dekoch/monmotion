#!/bin/bash

echo make openwrt

VERSION=$1"/"

cd "./openwrt/"$VERSION

make

cd ..
cd ..