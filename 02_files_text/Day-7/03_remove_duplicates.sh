#!/bin/bash

# 03_remove_duplicates.sh — Day-7 Challenge-3
# 📄 Task: Remove Duplicate Lines from a File

# ==== MOTD Banner ====
echo "========================================="
echo "🧠 Day-7 Shell Challenge - Problem 3"
echo "📄 Task: Remove Duplicate Lines from a File"
echo "========================================="

# ==== Script Logic ====
echo -n "📂 Enter the filename: "
read filename

if [[ ! -f "$filename" ]]; then
    echo "❌ File '$filename' not found."
    exit 1
fi

# Use this one-liner to remove duplicates & overwrite
awk '!seen[$0]++' "$filename" > temp_file && mv temp_file "$filename"

echo "✅ Duplicate lines removed and saved in same file: '$filename'"