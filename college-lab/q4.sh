#!/bin/bash

# 4. Employee file
# Aim:- Create an employee file which contains the following fields: employee name,designation,employee number and salary


read -p "Enter the name of the employee : " name
read -p "Enter the designation of the employee : " designation
read -p "Enter the employee number : " number
read -p "Enter the salary of the employee : " salary

touch employee.txt

echo "Name: $name" > employee
echo "Designation: $designation" >> employee
echo "Number: $number" >> employee
echo "Salary: $salary" >> employee

echo "employee file created successfully"


