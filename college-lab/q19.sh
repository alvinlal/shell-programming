#!/bin/bash


# 18. BANK TRANSACTIONS
# Aim:- To write a menu driven program to perform bank transactions

declare -i currentAmount=0

while true
do
	echo -e "\n1. Deposit"
	echo "2. WithDraw"
	echo "3. Check Balance"
	echo "4. Exit"
	read -p "Enter your choice : " choice

	echo -e "\n"

		case $choice in
	1)
		read -p "Enter amount to deposit : " amt
		((currentAmount+=amt))
		echo "Successfully deposited amount rs $amt"		
		;;
	2)
		read -p "Enter the amount to withdraw : " amt

		if [ $amt -gt $currentAmount ]
		then
			echo "Not enough balance!"
		else
			((currentAmount-=amt))
			echo "Successfully withdrawed amount rs $amt"		
		fi
		;;
	3)
		echo "current balance is $currentAmount"
		;;
   	4)
		exit
		;;
	*)
		echo "Invalid choice !"
		;;
	esac
done

