#!/bin/bash

clear
echo "======================================================="
echo "   🐧 DAY 8 - PROBLEM 4 - SHELL CHALLENGE              "
echo "   🗂️  BACKUP FILES MODIFIED IN THE LAST 24 HOURS     "
echo "======================================================="
echo ""

read -p "📂 Enter directory to scan (default: current): " dir
dir=${dir:-.}  # Default to current directory if empty

# Create backup folder with timestamp
backup_dir="backup_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

echo "🔍 Searching files modified in last 24 hours in '$dir'..."
find "$dir" -type f -mtime -1 -exec cp --parents {} "$backup_dir" \;

echo ""
echo "✅ Backup complete! Files copied to: $backup_dir"
