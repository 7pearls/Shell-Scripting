#!/usr/bin/sh

echo -n "Enter any word : "
read word
case $word in
	[aeiou]*) echo "The word begin with lower case vowels";;
	[AEIOU]*) echo "The word beging with Upper case vowels";;
	*0-9]$) echo "The word end with digit";;
	???) echo "You have entered 3 words letter";;
esac
