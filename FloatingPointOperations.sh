#! /bin/bash

read -p "Enter two floating point numbers : " num1 num2

echo $num1 + $num2 = $(echo "$num1+$num2"|bc)
echo $num1 - $num2 = $(echo "$num1-$num2"|bc)
echo $num1 / $num2 = $(echo "scale=2;$num1/$num2"|bc) # scale is for setting precision
echo $num1 \* $num2 = $(echo "scale=2;$num1*$num2"|bc)



