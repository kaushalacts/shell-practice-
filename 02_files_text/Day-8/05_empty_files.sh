#!/bin/bash

clear
echo "========================================================"
echo "   🐧 DAY 8 - PROBLEM 5 - SHELL CHALLENGE               "
echo "   🗂️  FIND ALL EMPTY FILES IN A DIRECTORY              "
echo "========================================================"
echo ""

read -p "📂 Enter directory to scan (default: current): " dir
dir=${dir:-.}  # Use current directory if none entered

echo ""
echo "🔍 Empty files in '$dir':"
echo "----------------------------"

empty_files=$(find "$dir" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "✅ No empty files found."
    exit 0
fi

echo "$empty_files"
echo ""
echo "✅ Done! All empty files have been listed."
echo ""
read -p "🗑️  Do you want to delete these empty files? (y/n): " choice

if [[ "$choice" =~ ^[Yy]$ ]]; then
    echo "$empty_files" | xargs rm -f
    echo "✅ All empty files have been deleted."
else
    echo "❎ Files not deleted."
fi

