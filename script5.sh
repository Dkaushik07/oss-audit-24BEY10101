#!/bin/bash
# Personalized Open Source Manifesto Creator
# Dron Kaushik | Capstone Project

echo "Please provide three short answers to generate your manifesto."
echo ""

# Capturing user input for the generator
read -p "A. Which open-source tool do you use most? " user_app
read -p "B. In one word, what is 'freedom' to you? " user_vision
read -p "C. What kind of project would you build? " user_goal

timestamp=$(date '+%d %B %Y')
file_name="manifesto_$(whoami).txt"

# Generating the personalized statement
echo "THE OPEN SOURCE MANIFESTO OF $(whoami)" > $file_name
echo "Created on: $timestamp" >> $file_name
echo "My daily workflow is powered by $user_app, a tool built on sharing." >> $file_name
echo "I believe that the core of software freedom is $user_vision." >> $file_name
echo "I hope to contribute to the world by creating $user_goal." >> $file_name

echo "------------------------------------------"
echo "Success! Your manifesto is saved to $file_name"
echo "------------------------------------------"
cat $file_name
