# Open Source Audit - VLC Media Player
**Student Name:** Dron Kaushik  
**Roll Number:** 24BEY10101  
**Course:** Open Source Software (Capstone Project)

## Project Overview

The repository contains a structured audit of the VLC Media Player which examines its historical development and its licensing through GPL v2 and its technical specifications for Linux operating systems. The system includes five unique shell scripts which demonstrate the ability to manage Linux systems and automate tasks. 

## Scripts Description
1. **script1.sh (System Identity):** The script creates a report which includes information about the Linux distribution and kernel version and user environment details.
2. **script2.sh (Package Inspector):** The script checks for VLC installation status while delivering a philosophical overview of the project.
3. **script3.sh (Disk Auditor):** The system inspects all system directories to check disk space usage and access rights which includes VLC configuration directories.
4. **script4.sh (Log Analyzer):** The system examines system logs to find particular keywords and calculates how often those keywords appear.
5. **script5.sh (Manifesto Generator):** The system provides an interactive tool which creates a customized Open Source philosophy statement for users. 

## How to Run the Scripts
To execute script on Linux/WSL system, follow these steps:

1. **Clone the repository:**
   `git clone https://github.com/Dkaushik07/oss-audit-24BEY10101.git`
   `cd oss-audit-24BEY10101`

2. **Grant execution permissions:**
   `chmod +x *.sh`

3. **Run the scripts:**
   - `./script1.sh`
   - `./script2.sh`
   - `./script3.sh`
   - `./script4.sh /var/log/dpkg.log vlc`
   - `./script5.sh`

## Dependencies
- The system requires Linux operating systems with Ubuntu/Debian as the suggested platform.
- To install VLC the user must execute the command `sudo apt install vlc`.
- The system requires the installation of `lsb-release` package.
