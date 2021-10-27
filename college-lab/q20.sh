#!/bin/bash

# 20. Concatenate files
# Aim:- To concatenate files starting with a particular character


read -p "Enter character : " char


for file in * 
do 
	if [ -f $file ]
	then
		if [[ $(head -c 1 $file) = $char ]]
		then
			echo "----------"
			cat $file
			echo "----------"
		fi
	fi
done
