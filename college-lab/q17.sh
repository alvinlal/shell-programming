#!/bin/bash

# 17. String operations
# Aim:- To write a shell script to perform the following string operations
# 1. To extract a substring from a given string
# 2. find length of the given string


while true
do
	echo -e "\n1. To extract a substring from a given string "
	echo "2. find length of the given string "
	echo "3. Exit"
	read -p "Enter your choice : " choice

	echo -e "\n"

		case $choice in
	1)
		read -p "Enter the string : " string
		read -p "Enter index 1 : " index1
		read -p "Enter index 2 : " index2
		echo "string after extracting from index $index1 to $index2 is $(cut -c$index1-$index2 <<< "$string")"
		;;
	2)
		read -p "Enter the string : " string
		echo "The length of the string is $(echo -n "$string" | wc -m)"
		;;
	3)
		exit
		;;
	*)
		echo "Invalid choice"
		;;
	esac
done



