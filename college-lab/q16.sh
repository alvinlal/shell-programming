#!/bin/bash


# 16. Files with read,write and execute permissions
# Aim:- To write a shell script that displays list of all files in the current directory that has read,write and execute permissions


echo "The files with read, write and execute permissions are :- "
for file in *
do
	if [ -r $file -a -w $file -a -x $file -a -f $file ]
	then
		echo $file
	fi
done

