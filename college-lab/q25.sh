#!/bin/bash

# 25. Menu driven program of student
# Aim:- A database file contains student no, name & course . Write a menudriven program for data entry for searching a student using student no (Menu - append,search,exit)

while true
do
	echo -e "\n1. Append"
	echo "2. Search"
	echo "3. Exit"
	read -p "Enter your choice : " choice

	echo -e "\n"

		case $choice in
	1)
		read -p "Enter student no : " no
		read -p "Enter student name : " name
		read -p "Enter student course : " course
		echo "$no,$name,$course" >> studentdb.txt
		echo "successfully inserted"
		;;	
	2)
		read -p "Enter student no : " no
		found=0;
		while read p
		do

			CURNO=$(echo "$p" | cut -d "," -f 1)	

			if [ $CURNO -eq $no ]
			then
				echo "Details of student no $no is : "
				name=$(echo "$p" | cut -d "," -f 2)
				echo "Name:$name"
				course=$(echo "$p" | cut -d "," -f 3)
				echo "Course:$course"
				found=1
			fi
	    done <studentdb.txt

		if [ $found -eq 0 ]
		then
			echo "Student not found!"
		fi

		;;	
   	3)
		exit
		;;
	*)
		echo "Invalid choice !"
		;;
	esac
done



