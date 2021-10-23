#!/bin/bash


# 8. Gross salary
# Aim:- To calculate the gross salary according to the basic salary entered

read -p "Enter Basic salary (bp) : " bp
read -p "Enter da amount : " da
read -p "Enter ca amount : " ca
read -p "Enter tao amount : " tao
read -p "Enter lic amount : " lic
read -p "Enter pf amount : " pf

echo "Your Gross salary is $(((bp+da+ca+tao)-(lic+pf)))"
