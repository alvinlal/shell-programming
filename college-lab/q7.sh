#!/bin/bash

# 7. Reverse a number
# Aim:- A shellscript to reverse a number

read -p "Enter the number : " n

rev=0

while [ $n -gt 0 ]
do
	r=$(($n%10))
	rev=$(($rev*10+r))
	n=$(($n/10))
done

echo "The reverse of the number is $rev"



