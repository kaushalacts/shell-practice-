#!/bin/bash

echo "====================================================="
echo "| Welcome to Day 2 of Linux Shell Scripting !       |"
echo "====================================================="

read -p "Enter the base  :" n
read -p "Enter the power :" p

temp=1 

for((i=0;i<p;i++))
do 
    temp=$((temp*n))
done


echo "The base $n to the power $p is :" 
echo -n "$temp"




echo " "

echo "====================================================="
echo "|             Happy Learning !                       |"
echo "====================================================="