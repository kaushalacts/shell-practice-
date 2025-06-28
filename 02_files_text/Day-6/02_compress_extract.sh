#!/bin/bash

# Script Name: 02_compress_extract.sh
# 📅 Day 6 | Task 2

clear
echo "=========================================="
echo "🗜️ Compress & Extract .tar.gz Files"
echo "=========================================="

echo "1️⃣ Compress"
echo "2️⃣ Extract"
read -p "Choose option [1/2]: " choice

if [ "$choice" == "1" ]; then
    read -p "Enter file/directory to compress: " input

    if [ -f "$input" ] || [ -d "$input" ]; then
        read -p "Enter output archive name (e.g., myarchive.tar.gz): " output
        tar -czvf "$output" "$input"
        echo "✅ Compressed to: $output"
    else
        echo "❌ Error: File or directory '$input' not found."
    fi

elif [ "$choice" == "2" ]; then
    read -p "Enter .tar.gz file to extract: " archive

    if [ ! -f "$archive" ]; then
        echo "❌ Error: Archive file '$archive' not found."
        exit 1
    fi

    read -p "Enter destination folder (leave blank for current): " dest

    if [ -z "$dest" ]; then
        tar -xzvf "$archive"
    else
        if [ ! -d "$dest" ]; then
            echo "📁 Destination folder not found. Creating: $dest"
            mkdir -p "$dest"
        fi
        tar -xzvf "$archive" -C "$dest"
    fi
    echo "✅ Extracted successfully."

else
    echo "❌ Invalid option. Please enter 1 or 2."
fi

echo "=========================================="
echo "🔁 Run again: bash 02_compress_extract.sh"
