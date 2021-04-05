#! /bin/bash

read -p "Enter name of the file : " file_name

if [ -f $file_name ]
then
    if [ -w $file_name ] # -w checks for write permissions
    then
        echo "Type something. Press ctrl+d to exit."
        cat >> $file_name
    else
        echo "You don't have write permissions."
    fi
else
    echo "$file_name does not exists."
fi
