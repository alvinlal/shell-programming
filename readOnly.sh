#! /bin/bash

var=50

readonly var

var=51 # not possible

echo "var => $var"

hello(){
    echo "hello"
}

hello
readonly -f hello

hello(){ # not possible
    echo "hello world"
}