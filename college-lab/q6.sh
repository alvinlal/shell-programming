#!/bin/bash

# 6. Sort n numbers using array
# Aim:- Write a shell script to sort n numbers using array

arr=()

read -p "Enter the no of element in the array : " n

for((i=0;i<$n;i++))
do
	read -p "Enter element $((i+1)): " arr[i]
done

for((i=${#arr[@]};i>0;i--))
do
noSwaps=true;
	for((j=0;j<i-1;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
			noSwaps=false;
		fi
	done
	if [ $noSwaps = true ]
	then
		break
	fi
done

echo ${arr[@]}
