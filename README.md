# Open Source Audit - Dron Kaushik
## Roll Number: 24BEY10101
## Software Audited: VLC Media Player

### Scripts in this repository:
1. script1.sh: System Identity Report
2. script2.sh: FOSS Package Inspector
3. script3.sh: Disk and Permission Auditor
4. script4.sh: Log File Analyzer
5. script5.sh: Open Source Manifesto Generator






# Open Source Audit - VLC Media Player
**Student Name:** Dron Kaushik  
**Roll Number:** 24BEY10101  
**Course:** Open Source Software (Capstone Project)

## Project Overview
This repository contains a structured audit of **VLC Media Player**, exploring its origins, licensing (GPL v2), and technical footprint on a Linux environment. It includes five custom shell scripts designed to demonstrate Linux administration and automation skills.

## Scripts Description
1. **script1.sh (System Identity):** Generates a report of the current Linux distribution, kernel version, and user environment.
2. **script2.sh (Package Inspector):** Verifies if VLC is installed and provides a philosophical overview of the project.
3. **script3.sh (Disk Auditor):** Audits system directories for disk usage and permissions, including VLC configuration paths.
4. **script4.sh (Log Analyzer):** Scans system logs (e.g., dpkg.log) for specific keywords and reports the frequency of occurrences.
5. **script5.sh (Manifesto Generator):** An interactive tool that generates a personalized Open Source philosophy statement.

## How to Run the Scripts
To execute these scripts on a Linux/WSL system, follow these steps:

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
- Linux System (Ubuntu/Debian recommended)
- `vlc` package (`sudo apt install vlc`)
- `lsb-release` package
