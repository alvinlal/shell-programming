#! /bin/bash

read -p "Enter a number : " num

i=0;

while [ $i -le $num ]
do
    echo $i
    (( i++ ))
done