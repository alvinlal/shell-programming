#! /bin/bash

read -p "Enter a character : " c

case $c in 
    [A-Z] )
    echo "You entered a capital letter" ;;
    [a-z] )
    echo "You entered a small letter" ;;
    ? )
    echo "You entered a special character" ;;
    * )
    echo "Unknown character"
esac