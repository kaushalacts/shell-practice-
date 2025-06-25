#!/bin/bash

echo "🔍 Word Occurrence Counter"
read -p "Enter filename: " file

if [ ! -f "$file" ]; then
  echo "❌ File not found!"
  exit 1
fi

read -p "Enter the word to search: " word

count=$(grep -owi "$word" "$file" | wc -l)
echo "📊 The word '$word' appears $count times in $file."
