#!/bin/bash

# Script Name: 03_split_file.sh
# 📅 Day 6 | Task 3

clear
echo "=========================================="
echo "✂️  Split Large File into Chunks"
echo "=========================================="

read -p "📄 Enter the file to split: " file

if [ ! -f "$file" ]; then
    echo "❌ Error: File '$file' not found."
    exit 1
fi

echo "Choose split method:"
echo "1️⃣ Split by size (e.g., 10M)"
echo "2️⃣ Split by number of lines"
read -p "Enter option [1/2]: " option

read -p "🔤 Enter prefix for chunk files (e.g., chunk_): " prefix

if [ "$option" == "1" ]; then
    read -p "📏 Enter size per chunk (e.g., 10M, 500K): " size
    split -b "$size" "$file" "$prefix"
    echo "✅ File split into chunks of $size each."

elif [ "$option" == "2" ]; then
    read -p "📄 Enter number of lines per chunk: " lines
    split -l "$lines" "$file" "$prefix"
    echo "✅ File split into chunks with $lines lines each."

else
    echo "❌ Invalid option. Please choose 1 or 2."
    exit 1
fi

echo "=========================================="
echo "🔁 Run again: bash 03_split_file.sh"
