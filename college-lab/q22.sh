#!/bin/bash


# 22. File name with same name
# Aim:- To write a shellscript for a full path dir1/dir2/dir3/mydir and check whether there exists a filename with the same name as any of the names present in the supplied path


read -p "Enter the path : " fullpath

IFS='/' list=($fullpath)

flag=0

for file in "${list[@]}"
do
	if [ -f $file ]
	then
		echo "file $file exists in the current directory"
		flag=1
	fi
done

if [ $flag -eq 0 ]
then
	echo "No match found!"
fi

