#!/bin/sh
#
# Python Uninstaller
# 
# https://github.com/lxdklp/python-for-kindle
#

HACKNAME="Python"

[ -f ./libotautils5 ] && source ./libotautils5

logmsg "I" "About" "" "https://github.com/lxdklp/python-for-kindle"
logmsg "I" "$HACKNAME Uninstall" "" "Removing Python..."

rm -rf /mnt/us/python3
rm -f /usr/bin/python3
rm -f /usr/bin/python

logmsg "I" "$HACKNAME Uninstall" "" "Python removed successfully."

otautils_update_progressbar

return 0