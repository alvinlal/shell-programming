#!/bin/bash

# 12. Interactive GREP Script
# Aim:- To develop an interactive grep script that asks for a word and filename and display how many lines contain that word

read -p "Enter the word : " word
read -p "Enter the filename : " file


if [ -e $file ]
then
    echo "The word $word appears in $(grep -c $word $file) lines in the file $file";
else
	echo "File does not exist in the current directory"
fi
