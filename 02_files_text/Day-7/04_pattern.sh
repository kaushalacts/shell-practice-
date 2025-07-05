#!/bin/bash

# =========================================
# 🧠 Day-7 Shell Challenge - Problem 4
# 📄 Find a Specific Pattern Using grep
# =========================================

echo "========================================="
echo "🧠 Day-7 Shell Challenge - Problem 4"
echo "📄 Find Pattern in File Using grep"
echo "========================================="

# Prompt user for filename and pattern
read -p "📂 Enter the filename: " filename
read -p "🔍 Enter the pattern to search: " pattern

# Check if file exists
if [[ ! -f "$filename" ]]; then
    echo "❌ File '$filename' not found."
    exit 1
fi

# Search for the pattern
echo "🔎 Searching for pattern '$pattern' in '$filename'..."
grep --color=auto -n "$pattern" "$filename"

# Exit status check
if [[ $? -ne 0 ]]; then
    echo "❗ No matches found."
else
    echo "✅ Pattern matched successfully."
fi