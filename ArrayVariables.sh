#! /bin/bash


os=('windows' 'linux' 'mac')

os[3]="ubuntu"

unset os[1]

echo "${os[@]}"
echo "${os[0]}"
echo "${#os[@]}"
echo "${!os[@]}"

string=sdfsdsdfkljfl
echo "${string[0]}"