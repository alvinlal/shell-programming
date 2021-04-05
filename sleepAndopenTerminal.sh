#! /bin/bash

num=0

while [ $num -le 10 ]
do
    echo $i
    (( num++ ))
    sleep 1
    gnome-terminal
done