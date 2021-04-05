#! /bin/bash

read -p "Enter your age : " age

if [ $age -gt 18 ] && [ $age -lt 30 ]
then
    echo "Valid age"
else
    echo "Invalid age"
fi

if [ $age -gt 50 -a $age -lt 80 ]
then
    echo "Your age is between 50 and 80"
fi

if [[ $age -gt 80 && $age -lt 100 ]]
then
    echo "Your age is between 80 and 100"
else
    echo "Your age is between 0 and 80"
fi