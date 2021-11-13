#!/bin/bash

# 28. Value of ncr
# Aim:- write a program to 	print the value of ncr

read -p "Enter the value of n : " n
read -p "Enter the value of r : " r

fact(){

factorial=1
for(( i=1; i<=$1; i++ ))
do
  factorial=$[ $factorial * $i ]
done

echo $factorial

}

nfact="$(fact n)"
rfact="$(fact r)"
nmr=$((n-r))
nmrfact="$(fact nmr)"


ncr=$((nfact/(rfact*nmrfact)))


echo "nCr is $ncr"

