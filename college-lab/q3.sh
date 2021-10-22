#!/bin/bash

# 3. largest of three numbers
# Aim:- To find the largest of three numbers

read -p "Enter the first number : " num1
read -p "Enter the second number : " num2
read -p "Enter the third number : " num3

if [ $num1 -gt $num2 ]
then
	if [ $num1 -gt $num3 ]
	then
		echo "$num1 is greater"
	else
		echo "$num2 is greater"
	fi
else
	if [ $num2 -gt $num3 ]
	then
		echo "$num2 is greater"
	else
		echo "$num3 is greater"
	fi
fi
