#! /bin/bash


read -p "Enter two numbers : " num1 num2
sum=`expr $num1 + $num2`
echo The sum of numbers is $sum
echo The difference of numbers is $(($num1 - $num2))
echo The division of numbers is $(($num1 / $num2))
echo The product of numbers is `expr $num1 \* $num2`
echo The modulous of numbers is `expr $num1 % $num2`




