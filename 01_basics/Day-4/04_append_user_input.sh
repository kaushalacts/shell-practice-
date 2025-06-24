#!/bin/bash

# ┌────────────────────────────────────────────┐
# │ ✍️ Append User Input to a File – Task 4    │
# └────────────────────────────────────────────┘

# Script Name: 04_append_user_input.sh
# Description: Appends user input to a specified file.

clear
echo "=========================================="
echo "   📝 Shell Script: Append User Input"
echo "------------------------------------------"
echo "   📅 Day 4 | Task 4"
echo "=========================================="

# Ask for file name
read -p "Enter the filename to append to: " filename
echo "🔍 Checking if '$filename' exists..."

if [ -f "$filename" ]; then
    echo "✅ File '$filename' exists."
else
    echo "❌ File '$filename' does NOT exist."

# Ensure file exists (or create it)
touch "$filename"
echo "File Created Successfully."
fi


# Ask user for input
read -p "Enter the text you want to append: " user_input

# Append input to file on a new line
echo "$user_input" >> "$filename"

# Confirm
if [ $? -eq 0 ]; then
    echo "✅ Text appended successfully to '$filename'"
else
    echo "❌ Failed to append text."
fi

echo
echo "💡 Tip: Use 'cat $filename' to view your file."
echo "🔁 Run again using: bash 04_append_user_input.sh"
echo "=========================================="
