#!/bin/bash
# Script 1: System Identity Report
# Author: DRON KAUSHIK | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="DRON KAUSHIK" 
SOFTWARE_CHOICE="VLC Media Player"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"

# TODO: Add distro name, date, and license message
echo "Distro  : $(lsb_release -d | cut -f2)"
echo "Date    : $(date)"
echo "License : This system is covered by the GNU GPL Licence."
