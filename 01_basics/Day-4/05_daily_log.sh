#!/bin/bash

# ┌────────────────────────────────────────────────────────────┐
# │ 🕒 Daily Logging Script – Archive + Dashboard Friendly     │
# └────────────────────────────────────────────────────────────┘

# Script Name: 05_daily_log.sh
# Description: Logs user input daily into per-user files, with automatic archiving of logs older than 7 days.

# Get current user and create a session ID
user=$(whoami)
session_id="${user}_$(date +%Y%m%d_%H%M%S)_$$"

# Define log directory
base_log_dir="./logs/$user"
archive_dir="$base_log_dir/archives"
mkdir -p "$base_log_dir"
mkdir -p "$archive_dir"

# Create a new log file every time with date and time
log_file="$base_log_dir/log_$(date +%F_%H-%M-%S).txt"


# Handle input: if no arguments, prompt interactively
if [ -z "$1" ]; then
    read -p "Enter your log message: " log_message
else
    log_message="$*"
fi

# Append timestamped log message
echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$session_id] $log_message" >> "$log_file"

# ✅ Confirmation
echo "✅ Log saved to: $log_file"
echo "📄 Last log entry:"
tail -n 1 "$log_file"

# 🔁 Archive logs older than 7 days 
find "$base_log_dir" -maxdepth 1 -type f -name "log_*.txt" -mtime +2 | while read old_log; do
    archive_name="$(basename "$old_log" .txt)_archived_$(date +%Y%m%d%H%M%S).tar.gz"
    tar -czf "$archive_dir/$archive_name" -C "$base_log_dir" "$(basename "$old_log")" && rm -f "$old_log"
    echo "🗃️ Archived: $(basename "$old_log") → $archive_name"
done

echo "🗃️ Archived logs older than 7 days to: $archive_dir"
echo
echo "📂 Active logs directory: $base_log_dir"
echo "📦 Archived logs directory: $archive_dir"
echo "=========================================="
