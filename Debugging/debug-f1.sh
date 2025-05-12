#!/bin/bash

set -eu pipefail  # Fail on error, undefined variables, and pipe issues

echo "Enter a number:"
read number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Input must be a number" >&2
    exit 1
fi

result=$((number + 10))
echo "DEBUG: Computed result is $result"
echo "The result is $result"

if [ "$number" -gt 10 ]; then
  echo "Number is greater than 10"
else
  echo "Number is less than or equal to 10"
fi

