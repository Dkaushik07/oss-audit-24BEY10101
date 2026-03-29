#!/bin/bash
# Script 4: Log File Analyzer
# By Dron Kaushik | Course: Open Source Software
# Usage: ./script4.sh /var/log/dpkg.log

LOGFILE=$1
# Default keyword is 'error' if no second argument is provided
KEYWORD=${2:-"error"} 
COUNT=0

# Check if the file exists
if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 exit 1
fi

# While-read loop to scan the log file line by line
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# TODO: Add a do-while style retry if the file is empty,
# and print the last 5 matching lines using tail + grep
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty."
else
    echo "--- Last 5 matching lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
