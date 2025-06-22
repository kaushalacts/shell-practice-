
#!/bin/bash

echo "====================================================="
echo "| Welcome to Day 2 of Linux Shell Scripting !       |"
echo "====================================================="

read -p  " Enter the number of terms" n

# First two terms
a=0
b=1


echo "Fibonacci Series upto $n terms"

for((i=0;i<n;i++))

do 
    echo -n " $a "
    fun=$((a+b))
    a=$b
    b=$fun
done 

echo " "

echo "====================================================="
echo "|             Happy Learning !                       |"
echo "====================================================="
