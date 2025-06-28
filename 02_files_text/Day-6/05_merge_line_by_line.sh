#!/bin/bash

# Script Name: 05_merge_line_by_line.sh
# 📅 Day 6 | Task 5

clear
echo "=========================================="
echo "🔗 Merge Two Files Line by Line"
echo "=========================================="

read -p "📄 Enter first file name: " file1
read -p "📄 Enter second file name: " file2

# Check if both files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "❌ One or both files do not exist."
    exit 1
fi

read -p "💾 Enter name for output file (e.g., merged.txt): " output

# Merge line by line and save to output
paste -s "$file1" "$file2" > "$output"

echo "✅ Files merged line by line into: $output"
echo "=========================================="
echo "🔁 Run again: bash 05_merge_line_by_line.sh"
