#!/bin/bash
# FOSS Package Verification Script
# Author: Dron Kaushik | VIT Capstone

target_software="vlc" # Target application

# Verifying if the package is installed via dpkg (Ubuntu)
if dpkg -s $target_software &>/dev/null; then
 echo "Status: $target_software is correctly installed."
 echo "-"
 # Filtering version and description details
 dpkg -s $target_software | grep -E 'Version|Section|Description'
else
 echo "Error: $target_software could not be located on this system."
fi

echo "---"
# Philosophy note for various open-source projects
case $target_software in
 httpd)  echo "Apache: The server that powered the early web." ;;
 mysql)  echo "MySQL: Supporting the data of millions of users." ;;
 vlc)    echo "VLC: A global success built entirely by students." ;;
 firefox)echo "Firefox: Fighting for an open and secure internet." ;;
 git)    echo "Git: Decentralized control for the coding community." ;;
 *)      echo "A vital component of the open-source world." ;;
esac
