#!/bin/bash

# 23. Compare two strings
# Aim:- To write a shell script to compare two strings


read -p "Enter string 1 : " string1
read -p "Enter string 2 : " string2


if [ $string1 = $string2 ]
then
	echo "The strings are equal"
else
	echo "The strings are not equal"
fi
