#!/bin/bash

# 2. File access permissions
# Aim:- to check whether a file has access permissions

read -p "Enter file name : " filename

if [ -e $filename ]
then
	if [ -r $filename ]
	then
		echo "The file has read permission"
	else
		echo "The file does not have read permission"
	fi
	if [ -w $filename ]
	then
		echo "The file has write permission"
	else
		echo "The file does not have write permission"
	fi
	if [ -x $filename ]
	then
		echo "The file is executable"
	else
		echo "The file is not executable"
	fi
else
	echo "The file does not exists"
fi
