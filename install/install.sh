#!/bin/sh
#
# Python Installer
#
# https://github.com/lxdklp/python-for-kindle
#

HACKNAME="Python"

PYSRC="./python3/*"
PYDST="/mnt/us/python3"

EXTSRC="./python-ext/*"
EXTDST="/mnt/us/extensions/python"

mkdir -p $PYDST
mkdir -p $EXTDST

cp -r $PYSRC $PYDST
cp -r $EXTSRC $EXTDST

find "$PYDST" -name "*.sig" -type f -exec rm -f {} +
find "$EXTDST" -name "*.sig" -type f -exec rm -f {} +

return 0