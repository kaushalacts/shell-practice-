#!/bin/bash

# 01_top_10_lines.sh — Day-7 Challenge-1
# Display top 10 lines of a given file

# ==== MOTD Banner ====
echo "========================================="
echo "🧠 Day-7 Shell Challenge - Problem 1"
echo "📄 Show Top 10 Lines of a File"
echo "========================================="

# ==== Script Logic ====
echo -n "📂 Enter the filename: "
read filename

if [[ -f "$filename" ]]; then
    echo ""
    echo "🔝 Top 10 lines of '$filename':"
    echo "-----------------------------------------"
    head -n 10 "$filename"
else
    echo "❌ File '$filename' not found. Please try again."
fi
