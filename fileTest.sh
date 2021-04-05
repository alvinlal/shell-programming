#! /bin/bash

echo -e "Enter name of the file : \c"; # \c keeps the cursor in the same line, -e flag has to be used
read file_name

if [ -e $file_name ] # -e check if the file exists or not
then
    echo "$file_name exists "
else
    echo "$file_name does not exist "
fi

read -p "Enter name of another file : " file_name

if [ -f $file_name ] # -f checks if the file is a regular file, ie returns false if the file is a directory, symlink, socket, device, etc
then
    echo "$file_name is regular file"
else
    echo "$file_name is not a regular file"
fi

read -p "Enter name of a directory : " dir_name

if [ -d $dir_name ] # -d checks if the given directory is present on current folder
then
    echo "directory $dir_name exists in current folder"
else   
    echo "directory $dir_name does not exists in current folder"
fi

read -p "Enter name of a file : " file_name

if [ -s $file_name ] # -s checks if a file is empty or not
then 
    echo "$file_name is not empty"
else
    echo "$file_name is empty"
fi