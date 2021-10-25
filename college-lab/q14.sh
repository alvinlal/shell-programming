#!/bin/bash

# 14.Interactive file handling script
# Aim:- To write an interactive shell program based on the users choice
# 1. List all files
# 2. Copying files 
# 3. Removing files 
# 4. Renaming files 
# 5. Linking files 
# 6. Exit 


 while true
do
	echo -e "\n1. List all files" 
	echo "2. Copying files"
	echo "3. Removing files"
	echo "4. Renaming files"
	echo "5. Linking files"
	echo "6. Exit"
	read -p "Enter your choice : " choice

	echo -e "\n"

		case $choice in
	1)
		echo "The files in the current folder are : "
		ls
		;;
	2)
		read -p "Enter the name of the file to copy from : " from
		
		if [ -e $from ]
		then
			read -p "Enter the name of file to copy to : " to
			cp $from $to
			echo "$from successfully copied to $to"
		else
			echo "file doesn't exist in the current folder!"
		fi
		;;
	3)
		read -p "Enter the name of the file to remove : " filename
		
		if [ -e $filename ]
		then
			rm $filename
			echo "File successfully removed"
		else
			echo "file doesn't exist in the current folder!"
		fi
		;;
	4)
		read -p "Enter the name of the file to rename : " filename

		if [ -e $filename ]
		then
			read -p "Enter the new name of the file : " newname
			mv $filename $newname
			echo "file successfully renamed to $newname"
		else
			echo "file doesn't exist in the current folder!"
		fi
		;;

	5)
		read -p "Enter the name of the file to create symlink : " filename

		if [ -e $filename ]
		then
			ln -s $filename "symlink-$filename"
			echo "Successfully created link"
		else
			echo "file doesn't exist in the current folder!"
		fi
		;;
   	6)
		exit
		;;
	*) 
		echo "Invalid choice !"
		;;
	esac
done


