#!/usr/bin/sh
#
#	SCRIPT: Special-parameter.sh 1 2 3 4 Bangalore 100 India
#	AUTHOR: Jitendra Barik
#	DATE: 20th Dec 2024
#	REV: 1.1
#	PLATFORM: Not platform dependent
#
#	PURPOSE: This script used to process all of the tokens which are pointed to by the command-line arguments $1, $2, $3..etc
#
#
#
for TOKEN in $*
do
	echo $TOKEN

done
