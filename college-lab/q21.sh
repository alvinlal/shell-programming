#!/bin/bash

# 21. Subdirectories of current directory
# Aim:- To write a shell-script to print all subdirectories in the current directory


for dir in */
do
	echo -e "\n"
	if [ "$(ls -A $dir)" ]; then
		echo "The contents of subdirectory $dir is : "
		ls $dir
	else
   		echo "Subdirectory $dir is Empty"
	fi
done
