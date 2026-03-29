#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Dron Kaushik | Course: Open Source Software

PACKAGE="vlc" # e.g. httpd, mysql, vlc, firefox

# Check if package is installed
# Note: Using dpkg instead of rpm because we are on Ubuntu
if dpkg -s $PACKAGE &>/dev/null; then
 echo "$PACKAGE is installed."
 # Find information equivalent to 'rpm -qi'
 dpkg -s $PACKAGE | grep -E 'Version|Section|Description'
else
 echo "$PACKAGE is NOT installed."
fi

# TODO: Add a case statement that prints a one-line
# philosophy note about the package based on its name
case $PACKAGE in
 httpd) echo "Apache: the web server that built the open internet" ;;
 mysql) echo "MySQL: open source at the heart of millions of apps" ;;
 # TODO: Add your software and 3 others
 vlc)         echo "VLC: built by students to share video freely" ;;
 firefox)     echo "Firefox: a nonprofit fighting for an open web" ;;
 git)         echo "Git: the tool Linus built when proprietary failed him" ;;
 libreoffice) echo "LibreOffice: born from a community fork — a real lesson" ;;
esac
