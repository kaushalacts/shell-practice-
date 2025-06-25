#!/bin/bash

# ┌────────────────────────────────────────────────┐
# │ 🧹 REMOVE BLANK + WHITESPACE-ONLY LINES SCRIPT │
# └────────────────────────────────────────────────┘

echo "📁 Clean Blank Lines Utility"
echo "💡 Supports multiple files | Backs up originals"

# Prompt for file(s)
read -p "Enter one or more filenames (space-separated): " -a files

for file in "${files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ File not found: $file"
        continue
    fi

    # Backup original
    cp "$file" "${file}.bak"
    echo "📦 Backup created: ${file}.bak"

    # Remove blank + whitespace-only lines
    sed -i '/^[[:space:]]*$/d' "$file"

    echo "✅ Cleaned: $file"
done

echo "🎉 All done!"
