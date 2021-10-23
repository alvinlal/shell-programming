#!/bin/bash

# 11. SED command
# Aim:- Write a shell command that 
# 1.delete the first character in each line in a file
# 2.delete the character before the last character in each line in a file


if [ -z $1 ]
then
	echo "Please provide a filename"
elif [ ! -e $1 ]
then
	echo "The file does not exist"
else
	sed -i 's/.//1' $1
	sed -i 's/.\(.\)$/\1/' $1
	echo "The contents of the file after removing first and second last characters from each line is :"
	cat $1
fi
