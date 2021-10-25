#!/bin/bash

# 13. Convert to uppercase
# Aim:- To write a shellscript that accepts one or more filenames as arguments and convert all of them to upercase, provided they exists in the current directory

read -p "Enter the name of the file : " file

if [ -e $file ]
then
	echo "The contents of the file after converting to uppercase is : "
	cat $file | tr "[:lower:]" "[:upper:]"
else
	echo "The file does not exists in the current directory"
fi
