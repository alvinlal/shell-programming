#!/bin/bash

# 18. Grade of 5 students
# Aim:- Write a shell script to display grade of 5 students

for i in {1..5}
do
	echo -e "\nEnter details of student $i : "
	read -p "Enter name : " name 
	read -p "Enter mark1 : " mark1 
	read -p "Enter mark2 : " mark2 
	read -p "Enter mark3 : " mark3

	echo -e "\nThe entered details are : "
	echo "name : $name"
	echo "mark1 : $mark1"
	echo "mark2 : $mark2"
	echo "mark3 : $mark3"
	echo "total : $((mark1+mark2+mark3))"
done
