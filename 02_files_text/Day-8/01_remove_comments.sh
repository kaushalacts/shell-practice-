#!/bin/bash

clear
echo "============================================"
echo "   🐧 DAY 8 - PROBLEM 1 - SHELL CHALLENGE   "
echo "   🔹 REMOVE ALL COMMENTS FROM A SCRIPT 🔹  "
echo "============================================"
echo ""

#Writing comment here : 

# Check for input
if [ -z "$1" ]; then
    echo "❌ Usage: $0 <script_file>"
    exit 1
fi

# Define input/output
input="$1"
output="cleaned_$1"

# Remove full-line and inline comments (basic)
sed 's/#.*//;/^\s*$/d' "$input" > "$output"

echo "✅ Done! Comments removed and saved to '$output'"
