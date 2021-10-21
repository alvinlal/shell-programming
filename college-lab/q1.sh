#!/bin/bash

# 1.file directory or not
# to check whether a file is directory or not

echo "Enter file name : "
read x

if [ -e $x ]
then
	if [ -d $x ]
	then
		echo "The file is a directory"
	else
		echo "The file is not a directory"
	fi
else
	echo "The file does not exist"
fi
