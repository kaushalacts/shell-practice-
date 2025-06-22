#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 04_create_file.sh
# Description: Prints the file created or not

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 04: Create a file!"
echo "   📅 Day 3 | Task 5"
echo "=========================================="
 
echo "📂 File Creation Script"
read -p "Enter the name of the file you want to create: " filename

# Add .txt extension
filename="$filename.txt"

# Check if file exists
if [ -f "$filename" ]; then
    echo "⚠️  File '$filename' already exists."
else
    echo "🛠️  Creating a text file for you..."
    touch "$filename"
    echo "🕒 Created on: $(date)"

    echo "✅ File '$filename' created successfully."
    echo "🕒 Timestamp written into the file."
fi


echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 05_create_file.sh"
echo "=========================================="