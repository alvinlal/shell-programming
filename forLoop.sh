#! /bin/bash

echo "The first five natural numbers are :-"

for i in 1 2 3 4 5
do 
    echo $i
done

echo "The first 10 even numbers are :-"

for i in {0..19..2}
do
    echo $i
done

echo -e "Enter cities :- \c"
read -a cities

echo "The entered cities are :-"

for city in "${cities[@]}"
do
    echo "$city"
done

echo -e "Enter some programming languages :-\c"

read -a langs

echo "The entered programming languages are :-"


for (( i=0;i<"${#langs[@]}";i++ ))
do
    echo "${langs[$i]}"
done


for command in pwd ls date
do
    $command
done

echo "Directories available in the current folder is"

for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
done