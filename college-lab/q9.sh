#!/bin/bash

# 9. Count number of lines and words
# Aim:- A shell script which counts the number of lines and words in a file.If no file is applied in the command, input is taken # from the keyboard

if [ -z "$1" ]
then
	echo "Enter the text below, press ctrl+d when finished"
	cat >> tempfile
	echo "The number of lines in the entered text is $(wc -l < tempfile)"
	echo "The number of words in the entered text is $(wc -w < tempfile)"
	rm tempfile
elif [ ! -e $1 ]
then
	echo "The file does not exist"
else
	echo "The number of lines in the file is $(wc -l < $1)"
    echo "The number of words in the file is $(wc -w < $1)"	
fi

