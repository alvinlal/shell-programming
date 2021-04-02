#! /bin/bash
echo "Enter name : "
read name # Takes input from keyboard and stores it into name variable
echo "Entered name : $name"

echo "Enter firstname, middlename and lastname : "
read firstname middlename lastname # Takes multiple input from keyboard delimited by space
echo "Names : $firstname, $middlename, $lastname"

read -p "Enter username : " user_var  # -p flag allows the user to enter characters in the same line as the prompt.
read -sp "Enter password : " pass_var # -s flag means silent, ie the entered text won't be visible, mainly used for passwords .
echo
echo "username : $user_var"
echo "password : $pass_var"

read -a elementsArray # -a flag is used to enter elements into an array.
echo "The entered elements are ${elementsArray[0]},${elementsArray[1]}"

echo "Enter something"
read # if you use read without a variable, the input will go to the $REPLY system variable.
echo "$REPLY"
