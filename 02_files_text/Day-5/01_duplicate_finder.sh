#!/bin/bash

# ┌─────────────────────────────────────────────────────────────┐
# │ 🔍 DUPLICATE LINE FINDER – SHELL SCRIPTING PRACTICE SERIES │
# ├─────────────────────────────────────────────────────────────┤
# │ 📁 This script finds and prints duplicate lines in a file.  │
# │ 📅 Day 5| Task 1                                            │
# │ 🧑 Author: Kaushalacts                        │
# └─────────────────────────────────────────────────────────────┘

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 01: Find Duplicate Lines in a File"
echo "   📅 Day 5 | Task 1"
echo "=========================================="


read -p "Enter your filename to check: " file


if [ ! -f "$file" ]; then
  echo "❌ Error: File '$file' not found!"
  exit 1
fi

echo "📄 Scanning file: $file"
echo "-------------------------------------"
echo "📝 Duplicate lines found:"
sort "$file" | uniq -c | awk '$1 >1'
echo "-------------------------------------"
echo "✅ Scan complete!"