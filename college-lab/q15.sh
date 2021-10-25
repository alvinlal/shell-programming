#!/bin/bash


# 15. Comparing files

# Aim :- To write a shell script that receive two filenames as arguments.It should check whether the 2 file contents are the same, if so the second file should be deleted


if [ $# -ne 2 ]
then
	echo "Please provide two filenames"
else
	if [ ! -e $1 ]
	then
		echo "file $1 doesn't exist in the current folder"
	elif [ ! -e $2 ]
	then
		echo "file $2 doesn't exist in the current folder"
	else
 		cmp -s $1 $2
		if [ $? -eq 0 ]
		then
			echo "The files are the same , deleting second file"
			rm $2
		else
			echo "The files are not the same"
		fi
	fi
fi
