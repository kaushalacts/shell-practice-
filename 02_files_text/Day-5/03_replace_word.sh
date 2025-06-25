#!/bin/bash

echo "🔁 Word Replacer Script"
read -p "Enter the filename: " file

if [ ! -f "$file" ]; then
    echo "❌ File not found!"
    exit 1
fi

read -p "Word to replace: " oldword
read -p "New word: " newword

# Backup before editing
cp "$file" "${file}.bak"
echo "📦 Backup created: ${file}.bak"

# Replace the word
sed -i "s/$oldword/$newword/g" "$file"
echo "✅ Replaced all occurrences of '$oldword' with '$newword' in $file"
