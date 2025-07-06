#!/bin/bash

clear
echo "==============================================="
echo "   🐧 DAY 8 - PROBLEM 2 - SHELL CHALLENGE     "
echo "   🔢 PRINT LINES CONTAINING NUMBERS ONLY     "
echo "==============================================="
echo ""

# Take input from user
read -p "📄 Enter the filename: " filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo "❌ File '$filename' not found. Please check the path and try again."
    exit 1
fi

echo ""
echo "🔍 Lines that contain only numbers:"
echo "-----------------------------------"
grep -E '^[0-9]+$' "$filename"

echo ""
echo "✅ Done! Only pure number lines were displayed from '$filename'."
