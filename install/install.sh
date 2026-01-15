#!/bin/sh
#
# Python Installer
# 
# https://github.com/lxdklp/python-for-kindle
#

HACKNAME="Python"
SRC="./python3"
DST="/mnt/us/python3"

[ -f ./libotautils5 ] && source ./libotautils5

otautils_update_progressbar

logmsg "I" "About" "" "https://github.com/lxdklp/python-for-kindle"
logmsg "I" "$HACKNAME Install" "" "Installing Python..."

if [ -d "$SRC" ]; then
    logmsg "I" "install" "" "Copying Python files..."
    cp -r "$SRC" "$DST" || {
        logmsg "E" "install" "" "Copy failed!"
        exit 1
    }
else
    logmsg "E" "$HACKNAME Install" "" "Missing $SRC!"
    exit 1
fi

otautils_update_progressbar

logmsg "I" "$HACKNAME Install" "" "Create symbolic link..."

ln -sf "$DST/bin/python3.14" /usr/bin/python3
ln -sf "$DST/bin/python3.14" /usr/bin/python

otautils_update_progressbar

logmsg "I" "$HACKNAME Install" "" "Python installed successfully."

otautils_update_progressbar

return 0