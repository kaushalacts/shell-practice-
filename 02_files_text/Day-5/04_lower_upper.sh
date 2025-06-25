#!/bin/bash

echo "🔠 Convert File to Uppercase"
read -p "Enter filename: " file

if [ ! -f "$file" ]; then
  echo "❌ File not found!"
  exit 1
fi

# Create backup
cp "$file" "$file.bak"
echo "📦 Backup created: $file.bak"

# Convert content to uppercase and overwrite original file
tr '[:upper:]' '[:lower:]' < "$file" > temp && mv temp "$file"

echo "✅ File '$file' converted to uppercase."
