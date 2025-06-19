#!/bin/bash

echo "================================================================="
echo "------***********Welcome to Day1 _fourth problem*******---------"
echo "================================================================"

echo "Enter the number to check if it is odd or even" 
read num

# Use modulus operator to check
if [ "$num" -eq 0 ]; then
    echo "Oh no! It's zero."
elif [ $((num % 2)) -eq 0 ]; then
    echo "This number is even."
else
    echo "This number is odd."
fi