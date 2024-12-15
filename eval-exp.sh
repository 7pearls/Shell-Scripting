#!/usr/bin/sh

# 1. Dynamic variable assignment

var1="Bangalore"
var2="Karnataka"

eval "var1='$var2'"

echo "$var1" #outout is "Karnataka"

# 2. Constructing and Executing commands

cmd="ls"

args="-l /" # path is root "/"

eval "$cmd $args"


# 3. Reading User input(with caution)

read -p "Enter a command: " user_cmd
eval "$user_cmd"
