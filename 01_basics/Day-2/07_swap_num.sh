#!/bin/bash

echo "====================================================="
echo "| Welcome to Day 2 of Linux Shell Scripting !       |"
echo "====================================================="

read -p "Enter first number: " a
read -p "Enter second number: " b

# Swapping using a temporary variable
temp=$a
a=$b
b=$temp

echo ""
echo "The numbers after swapping are:"
echo "a = $a"
echo "b = $b"



echo " "

echo "====================================================="
echo "|             Happy Learning !                       |"
echo "====================================================="