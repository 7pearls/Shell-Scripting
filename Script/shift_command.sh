#!/usr/bin/sh
#
#
# SCRIPT: shifting_command.sh
#
# AUTHOR: Jitendra Barik
#
#
# DATE: 13/12/2024
#
#
# REV: 1.0
# PLATFORM: Not platform dependent
#
# Description: This script is used to process all of the tokens which are pointed to by the command-line arguments
# $1,$2,$3, etc
#
#
#


# Initialize all variable

TOTAL=0  # Initialize the TOTAL counter to zero

  # Start while loop
while true
do
	TOTAL=`expr $TOTAL + 1`   # Mathematical operation

	TOKEN=$1  # We always point to the $1 argument with a shift
	echo $TOKEN

	shift  #Grab the next token i,e $2 becomes $1
	echo $@
	#exit if $@ > 3

done

echo "Total number of toekns processed: $TOTAL"
