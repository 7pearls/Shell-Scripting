#!/usr/bin/sh

if [ -z "$1" ]
then
	echo "Error: No argument provided"
	exit 2
fi

if [ -f "$1" ]
then
	echo "Error: fine not found"
	exit 3
fi

echo "File exits"

exit 0
