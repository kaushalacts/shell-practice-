#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 01_dir_check.sh
# Description: Checks for the directory

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 01: Check for a directory!"
echo "   📅 Day 4 | Task 1"
echo "=========================================="
 
echo "📂 Directory check script!!!!!"
read -p "Enter the name of the directory you want to create: " dir

 
if [ -d "$dir" ]; then
    echo "✅ Directory exists: $dir"
else
    echo "❌ Directory does not exist: $dir"
fi


echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 01_dir_check.sh"
echo "=========================================="



#After checking for directory first time ,that is not present. Try creating directory after that and then check for directory. 