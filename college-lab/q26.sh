#!/bin/bash

# 26. Sort an array, search an element
# Aim :- To write a shellscript to sort the elements in an array and to search a particular element


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

echo "The array after sorting is ${arr[@]}"

read -p "Enter element to search: " e

found=-1;

for((i=0;i<${#arr[@]};i++))
do
	if [ ${arr[i]} -eq $e ]	
	then
		found=$i;	
		break;
	fi
done

if [ $found -lt 0 ]
then
	echo "The element $e is not found in the array"
else
	echo "The element is found at position $found"
fi
