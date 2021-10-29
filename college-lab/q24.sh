#!/bin/bash

# 24. Multiplication table of a given table
# Aim:- Write a program to print the multiplication table of a given number using while


read -p "Enter the number : " num

i=1;

while [ $i -le 10 ]
do
	echo "$num X $i = $((num*i))"
	i=$((i+1))
done
