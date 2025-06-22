#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 02_file_check.sh
# Description: Prints if the file exists or not. 

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 02: Checks if file exists or not!"
echo "   📅 Day 3 | Task 2"
echo "=========================================="
 
filename="myfile.txt"

#For checking else statement ..kindly change the name of file or other file and see it does exit or not ? 

echo "🔍 Checking if '$filename' exists..."

if [ -f "$filename" ]; then
    echo "✅ File '$filename' exists."
else
    echo "❌ File '$filename' does NOT exist."
fi


 
echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 02_file_check.sh"
echo "=========================================="