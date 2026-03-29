#!/bin/bash
# Storage and Permission Audit Tool
# Scripted by Dron Kaushik

audit_list=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo " Dron's Directory Permission & Size Report"
echo "--"

for folder in "${audit_list[@]}"; do
 if [ -d "$folder" ]; then
    # Extracting file permissions and ownership using awk
    access_rights=$(ls -ld $folder | awk '{print $1, $3, $4}')
    # Calculating directory size using du
    total_size=$(du -sh $folder 2>/dev/null | cut -f1)
    echo "Folder: $folder | Access: $access_rights | Size: $total_size"
 else
    echo "Notice: $folder is missing or inaccessible."
 fi
done

echo "--"
# Checking for the local VLC configuration directory
vlc_config_dir="$HOME/.config/vlc"

if [ -d "$vlc_config_dir" ]; then
    echo "Result: VLC Config Folder is present."
    ls -ld "$vlc_config_dir" | awk '{print "Permissions: " $1 " | Owner: " $3}'
else
    echo "Result: VLC configuration not yet found at $vlc_config_dir."
fi
