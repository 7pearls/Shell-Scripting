#!/bin/bash

echo "Enter a number:"
read number
result=$((number + 10))
echo "The result is $result"

if [ $number -gt 10 ]; then
  echo "Number is greater than 10"
else
  echo "Number is less than or equal to 10"
fi

