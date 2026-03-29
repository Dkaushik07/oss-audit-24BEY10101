#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Dron Kaushik | Course: Open Source Software

echo "Answer three questions to generate your manifesto."
echo ""

# Taking interactive input from the user
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# TODO: Compose a paragraph using $TOOL, $FREEDOM, $BUILD
# and write it to $OUTPUT using echo and >>
echo "--- PERSONAL OPEN SOURCE MANIFESTO ---" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "In my daily life, I rely on $TOOL to explore the digital world." >> $OUTPUT
echo "To me, the essence of open source is $FREEDOM." >> $OUTPUT
echo "In the spirit of sharing, I pledge to build $BUILD and give it to the community." >> $OUTPUT

# Note: An alias could be created to run this, e.g., alias gen='./script5.sh'

echo "--------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------"
# Displaying the final content
cat $OUTPUT
