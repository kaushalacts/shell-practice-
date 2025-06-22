#!/bin/bash

echo "========================================================"
echo "          Welcome to factorial finder script            "
echo "========================================================"

echo "Enter a number:"
read num

# Check for positive and negative number first 
if [ "$num" -lt 0 ]; then
    echo "Factorial for numbers less than zero is not defined."
elif [ "$num" -eq 0 ]; then
    echo "The factorial of 0 is 1"
else
    fact=1
    for (( i=1; i<=num; i++ ))
    do
        fact=$((fact * i))
    done 
    echo "The factorial for $num is $fact"
fi

echo "          Happy Learning !       "
