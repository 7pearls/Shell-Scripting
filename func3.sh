#!/usr/bin/sh

sum1=0

Func_Multiple_args(){

	echo "Hello to $1 and $2"

	read -p "Enter third number :" val3

	sum1=`expr $1 + $2 + $val3`
	
	return $sum1

}

#Invoke the function

Func_Multiple_args 10 20
res=$?

echo "Return value : $sum1"

