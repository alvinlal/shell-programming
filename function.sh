#! /bin/bash

function sayHello(){
    echo "hello"
}

quit () {
    exit
}

function say(){
    echo $1 $2
}

say hello world
sayHello
quit