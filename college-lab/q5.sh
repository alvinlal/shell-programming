#!/bin/bash

# 5. List of directories
# Aim:- Write a shell script to
# 1. Display list of directories
# 2. Name of current directory
# 3. Display who is logged in
# 4. Long list of directory content according to the choice of the user


while true
do
	echo -e "\n1. Display list of directories"
	echo "2. Name of current directory"
	echo "3. Display who is logged in"
	echo "4. List directory contents"
	echo "5. Exit"
	read -p "Enter your choice : " choice

	echo -e "\n"

	case $choice in
	1)
		echo "The directories in the current folder are : "
		ls -d */
		;;
	2)
		echo "The name of current directory is $(basename $PWD)"
		;;
	3)
		echo "Current logged in user is $(whoami)"
		;;
	4)
		read -p "Enter name of directory to list contents : " dirname
		if [ -d $dirname ]
		then
			echo "The contents of directory $dirname is "
		    ls $dirname
		else
			echo "Directory does not exists in current folder"
		fi
		;;

	5)
		exit
		;;
   	*) 
		echo "invalid choice!"
		;;
	esac
done









