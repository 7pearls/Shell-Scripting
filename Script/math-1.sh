#!/usr/bin/sh

echo -n "Enter the first number : "

read num1

echo -n "Enter the second number : "

read num2
 
#sum=$((num1 + num2))a

sum=`expr $num1 + $num2`

echo "TOTAL : $sum";
