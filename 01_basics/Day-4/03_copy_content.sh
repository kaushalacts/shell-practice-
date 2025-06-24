#!/bin/bash

# ┌──────────────────────────────────────────────┐
# │ 📂 Copy File Content – Shell Scripting Task │
# └──────────────────────────────────────────────┘

# Script Name: 03_copy_file_content.sh
# Description: Copies content from a source file to a destination file

clear
echo "=========================================="
echo "   📄 Shell Script: Copy File Content"
echo "------------------------------------------"
echo "   📅 Day 4 | Task 3"
echo "=========================================="

# Prompt for source file
read -p "Enter the source file name: " source

# Check if source file exists and is readable
if [ ! -f "$source" ]; then
    echo "❌ Source file does not exist: $source"
    exit 1
fi

# Prompt for destination file
read -p "Enter the destination file name: " destination

# Copy content

cp "$source" "$destination"
#cat "$source" >> "$destination"

# Verify result
if [ $? -eq 0 ]; then
    echo "✅ Content copied from '$source' to '$destination' successfully."
    echo " Hurrah ! she loves Bhaiya ! " 
else
    echo "❌ Failed to copy content."
fi

echo
echo "💡 Tip: Use 'cat filename' to view file contents."
echo "🔁 Run again using: bash 03_copy_file_content.sh"
echo "=========================================="
