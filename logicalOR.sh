#! /bin/bash

read -p "Enter your age : " age

if [ $age -eq 18 ] || [ $age -eq 20 ]
then
    echo "Valid age"
else
    echo "Invalid age, Try again"
fi

read -p "Enter your age : " age

if [ $age -eq 18 -o $age -eq 20 ]
then
    echo "Valid age"
else
    echo "Invalid age, Try again"
fi

read -p "Enter your age : " age

if [[ $age -eq 18 && $age -eq 20 ]]
then
    echo "Valid age"
else
    echo "Invalid age, exiting.. "
fi
