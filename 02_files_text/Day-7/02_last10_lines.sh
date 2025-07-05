#!/bin/bash

# 01_last10_lines.sh — Day-7 Challenge-2
# Display last 10 lines of a given file

# ==== MOTD Banner ====
echo "========================================="
echo "🧠 Day-7 Shell Challenge - Problem 2"
echo "📄 Show Last 10 Lines of a File"
echo "========================================="

# ==== Script Logic ====
echo -n "📂 Enter the filename: "
read filename

if [[ -f "$filename" ]]; then
    echo ""
    echo "🔝 Last 10 lines of '$filename':"
    echo "-----------------------------------------"
    tail -n 10 "$filename"
else
    echo "❌ File '$filename' not found. Please try again."
fi
