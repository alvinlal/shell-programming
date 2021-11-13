#!/bin/bash

# 27. GCD of two numbers
# Aim:- Write a shellscript to find the gcd of two numbers


read -p "Enter number 1 : " a;
read -p "Enter number 2 : " b;

m=$a

if [ $b -lt $m ]
then
m=$b
fi

while [ $m -ne 0 ]
do
x=`expr $a % $m`
y=`expr $b % $m`

if [ $x -eq 0 -a $y -eq 0 ]
then

echo gcd of $a and $b is $m
break
fi
m=`expr $m - 1`

done
