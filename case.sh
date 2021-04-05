#! /bin/bash

vehicle=$1

case $vehicle in 
    "car" )
    echo "Rent of $vehicle is 100$" ;;
    "bus" )
    echo "Rent of $vehicle is 400$" ;;
    "bycycle" )
    echo "Rent of $vehicle is 5$" ;;
    * )
    echo "Unknown vehicle"
esac