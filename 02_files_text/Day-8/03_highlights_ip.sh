#!/bin/bash

clear
echo "====================================================="
echo "   🐧 DAY 8 - PROBLEM 3 - SHELL CHALLENGE            "
echo "   🌐 HIGHLIGHT IP ADDRESSES IN A LOG FILE           "
echo "====================================================="
echo ""

read -p "📄 Enter the log file name: " logfile

if [ ! -f "$logfile" ]; then
    echo "❌ File '$logfile' not found!"
    exit 1
fi

echo ""
echo "🔍 Showing lines with IP addresses highlighted:"
echo "----------------------------------------------"

# Regex for IPv4 and highlighting using ANSI escape codes (yellow)
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}|.*' "$logfile" | while read -r line; do
    highlighted=$(echo "$line" | sed -E 's/(([0-9]{1,3}\.){3}[0-9]{1,3})/\\033[1;33m\1\\033[0m/g')
    echo -e "$highlighted"

# Extract and print only IPv4 addresses (no duplicates)
#grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' "$logfile" | sort -u
done

echo ""
echo "✅ Done! All IPs are highlighted in yellow."
