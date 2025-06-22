#!/bin/bash

echo "====================================================="
echo "| Welcome to Day 2 of Linux Shell Scripting !       |"
echo "====================================================="

read -p "Enter the string to reverse:" str


len=${#str}
reverse=""

# Loop to build reversed string
for (( i=$len-1; i>=0; i-- )); do
    reverse="$reverse${str:$i:1}"
done

echo "Reversed string : $reverse"

echo "====================================================="
echo "|             Happy Learning !                       |"
echo "====================================================="