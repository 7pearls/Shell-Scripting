#!/usr/bin/sh

for i in `seq 1 10`
do
	echo "Bangalore"
	if [ $i -eq 5 ];then
		continue
	fi
	
	echo $i
	echo "Papun"
done
