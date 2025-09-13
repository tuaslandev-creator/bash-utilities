#!/bin/bash

echo "Welcome to calculator, please select the type of calculation you want to do"

echo "1 - Addition"
echo "2 - Substraction"
echo "3 - Multiplication"
echo "4 - Division"

read type

echo "Very well, and our first number is:"

read firstnumber

echo "And second is:"

read secondnumber

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
