#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Dron Kaushik | Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
    # Extracts permissions, owner, and group using awk
    PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
    # Extracts size using du and cut
    SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
    echo "$DIR does not exist on this system"
 fi
done

# TODO: Add a section that checks if your software's
# config directory exists and prints its permissions
echo "----------------------"
# For VLC, the config directory is usually in the user's home .config folder
VLC_CONFIG="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG" ]; then
    echo "VLC configuration directory found."
    ls -ld "$VLC_CONFIG" | awk '{print "Permissions: " $1, "| Owner: " $3}'
else
    echo "VLC configuration directory not found at $VLC_CONFIG."
    echo "Note: It is created the first time you run the software."
fi
