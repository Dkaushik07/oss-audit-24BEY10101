#!/bin/bash
# System Analysis Utility
# Developed by Dron Kaushik for the VLC Audit Project

#Identity Variables
auditor_name="Dron Kaushik" 
audit_target="VLC Media Player"

#Fetching System Metrics 
os_kernel=$(uname -r)
current_user=$(whoami)
uptime_status=$(uptime -p)
home_dir_path=$HOME

# Displaying Information
echo "*"
echo " OSS Audit Report - Managed by $auditor_name"
echo "*"
echo "Kernel Version       : $os_kernel"
echo "Logged-in User       : $current_user"
echo "Home Directory       : $home_dir_path"
echo "System Uptime        : $uptime_status"

# Displaying distribution details and date
echo "Distribution Info    : $(lsb_release -d | cut -f2)"
echo "Current Date/Time    : $(date)"
echo "OS Licensing         : This system is protected by the GNU GPL."
echo "Project Under Audit  : $audit_target"
echo "*"
