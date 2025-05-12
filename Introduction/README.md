Variable:

A Variable is a character string to which we assign a value.

Variable name in UPPERCASE is not recommened. In Shellscript, UPPERCASE used for Env variable.

The Value assigned could be a number, text, filename, device or any other type of date. A variable a pointer to the actual data.


Command-Line Aguments
-------------------------

The command-line argumets $1, $2...$9 are positional parameters, with $0 pointing to the actual command, program shell script or function and $1, $2, $3 are aruments to the command.


Special Parameters 
-------------------

$* and $@ both act same unless they enclosed with double quotes

--> The $* special parameter specifies all command-line arguments

--> The $@ special parameter also specifies all command-line arguments.

--> The "$*" special parameter takes the entire list as one arguments with spaces between.

--> The "$@" special parameters takes the entire list and separate intp separate arguments

--------------------

Double Quotes, Single Quotes, Back Ticks
-----------------------------------------

" " ---> Double quotes are required when defining a variable with data that contains white space and it allow character or command substitution

' ' ---> Single quotes when defining a variable with data that contains white spaces without command substitution

` ` ---> Command substitituion

echo
-----

echo -n "Please enter file name : "    # It will ask in same line
echo -p "Please enter file name : " val
echo "$val"

Math in shell script
---------------------
$(()) --> Math operation

`expr $val1 + val2`

let

Operator
----------

Operator

++ -- < >     	Auto increment and auto-decrement, both prefix and postfix

+		Unary plus

-		Unary minus

! ~		Logical negation; binary inversion(one's complement)

* / %		Multification, division, modulus

+ - 		Addition, subtraction

<< >> 		Bit-wise left shift, bitwise right shift

<= >=		Less than or equal to, greater than equal to

< >		Less than, greater 

== !=		Equality, inequality(Both evaluated left to right)

&		Bitwise AND

^		Bitwise exclusive OR

|		Bitwise OR

&&		Logical AND

||		Logical OR

Built-In Mathematical Functions
--------------------------------

abs		Absolute value

log		Natural Algorithm

acos		Arc cosine

sin		Sine

asin		Arc Sine

sinh		Hyperbolic sine

cos		Cosine

sqrt		Square root

cosh		Hyperbolic cosine

tan		Tangent
	
exp		Exponential function

tanh		Hyperbolic tangent

int		Inter part of floating-point number


File Permission
----------------

To make a script executable

chmod 754 my_script.sh

or

chmod u+rwx,g+rx,o+r my_script.ksh
