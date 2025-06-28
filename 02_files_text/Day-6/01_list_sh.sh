#!/bin/bash

# ┌────────────────────────────────────────────┐
# │ ✍️ List all sh files – Task 1    │
# └────────────────────────────────────────────┘

# Script Name: 01_list_ush.sh
# Description: Appends user input to a specified file.

clear
echo "=========================================="
echo "   📝 Shell Script: List all files with .sh extension"
echo "------------------------------------------"
echo "   📅 Day 6 | Task 1"
echo "=========================================="

# Ask for file name
 
 
read -p "📁 Enter the full path to the directory: " dir_path

# Check if the directory exists
if [ -d "$dir_path" ]; then
    echo -e "\n🔍 Listing all .sh files in: $dir_path"
    find "$dir_path" -type f -name "*.sh"
else
    echo "❌ Directory not found: $dir_path"
fi

 
echo
 
echo "🔁 Run again using: bash 01_list_sh.sh"
echo "=========================================="