#!/bin/bash

# Script Name: 05_sort_file.sh
# 📅 Day 6 | Task 5

clear
echo "=========================================="
echo "🔤 Sort File Content Alphabetically"
echo "=========================================="

read -p "📄 Enter the file to sort: " file

# Check if file exists
if [ ! -f "$file" ]; then
    echo "❌ File '$file' not found."
    exit 1
fi

# Ask for output file
read -p "💾 Enter name for output file (e.g., sorted.txt): " output

# Sort and save
sort "$file" > "$output"

echo "✅ Sorted content saved to: $output"
echo "=========================================="
echo "🔁 Run again: bash 05_sort_file.sh"
