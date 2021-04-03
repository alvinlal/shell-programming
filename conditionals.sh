#! /bin/bash

read -p "Enter your age : " age

if (( $age < 18 )) # (( )) performs arithmetic while ( ) executes commands in a subshell
then
    echo "You can't vote"
fi

read -p "Enter your name : " name

if [[ $name != "alvin" ]] # [[ condition ]] is upgraded syntax to [ condition ] and is used for string comparison
then
    echo "You have a bad name"
else 
    echo "You have a good name"
fi

read -p "heads or tails ? (h/t) " hort

if [[ $hort = "h" ]]  # both = and == checks for equality
then
    echo "You win"
else 
    echo "You lose"
fi

read -p "a or b or c ? (a/b/c) : " choice

if [ $choice = "a" ]
then
    echo "You choose a"
elif [ $choice = "b" ] # else if
then
    echo "You choose b"
elif [ $choice = "c" ]
then 
    echo "You choose c"
else
    echo "Wrong choice"
fi
