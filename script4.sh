#!/bin/bash
# Log Analysis Utility for OSS Projects
# Created by Dron Kaushik

source_log=$1
search_keyword=${2:-"error"} 
total_hits=0

# Ensure the log file is readable before processing
if [ ! -f "$source_log" ]; then
 echo "Process Failed: $source_log cannot be found."
 exit 1
fi

# Reading the file line by line to count keywords
while IFS= read -r current_line; do
 if echo "$current_line" | grep -iq "$search_keyword"; then
    total_hits=$((total_hits + 1))
 fi
done < "$source_log"

echo "Search Result: Found $total_hits instances of '$search_keyword' in $source_log"

# Checking for content and showing recent log entries
if [ ! -s "$source_log" ]; then
    echo "Note: The target log file appears to be empty."
else
    echo "Displaying Last 5 Matches"
    grep -i "$search_keyword" "$source_log" | tail -n 5
fi
