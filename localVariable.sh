#! /bin/bash

function sayName(){
    local name=$1
    echo "The name is $name"
}

name="Tom"

echo "The name is now $name"

sayName alvin

echo "The name is now $name"