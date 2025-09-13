#!/bin/bash
#
#Simple command-line calculator.
#
#Prompts the user for the type of calculation and two numbers.
#
#Then outputs result.
#

#Asks and reads the type of calculation.
echo "Welcome to calculator, please select the type of calculation you want to do"

echo "1 - Addition"
echo "2 - Substraction"
echo "3 - Multiplication"
echo "4 - Division"

read type


#Asks and reads the first number.
echo "Very well, and our first number is:"

read firstnumber


#Asks and reads the second number.
echo "And second is:"

read secondnumber


#Performs the calculation with the collected data.
case "$type" in
    1)result=$(("$firstnumber" + "$secondnumber"))
    echo "Result is: $result";;
    2)result=$(("$firstnumber" - "$secondnumber"))
    echo "Result is: $result";;
    3)result=$(("$firstnumber" * "$secondnumber"))    
     echo "Result is: $result";;
    4)result=$(("$firstnumber" / "$secondnumber"))
    echo "Result is: $result";;
    *) echo "Opps... Something went wrong"
esac
vuaaaaaaa@vuaaaaaaa-E502SA:~/Desktop/Improve?May
