#! /bin/bash

echo "The odd numbers between 1 and 10 are :"
for (( i=0;i<10;i++))
do
  if (( $i%2==0 ))
  then
    continue
  fi
  echo $i;
done

read -p "Enter a number : " num
echo "The numbers between 1 and $num are :"
i=0
while [[ 2 < 4 ]]
do
  if [ $i -eq $num ]
  then 
     break
  fi
  (( i++ ));
  echo $i;
done