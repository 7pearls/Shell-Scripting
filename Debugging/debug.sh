#!/usr/bin/bash

#set +x = @ECHO ON
#set +x

number = 10

result=$((number + 10))
echo "The result is $result"

if [ "$number" -gt 10 ]; then
  echo "Number is greater than 10"

else
  echo "Number is less than or equal to 10"
fi

printf "Hello World"

  printf "|%-10s|%10s|\n" "Left" "Right"

for i in 1 2 3 4 5; do
  printf "Item %d\n" "$i"
done

