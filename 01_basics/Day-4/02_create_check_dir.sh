#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 02_create_check_dir.sh
# Description: Checks for the directory nad if it is not present automatically creates. 

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 02: Check for a directory if not exists, will create.!"
echo "   📅 Day 4 | Task 2"
echo "=========================================="
 
echo "📂 Directory check script!!!!!"
read -p "Enter the name of the directory you want to create: " dir

 
if [ -d "$dir" ]; then
    echo "✅ Directory exists: $dir"
else
    echo "❌ Directory does not exist: $dir"
    echo " Wait a moment ! I'm creating a directory for you. "
    
    mkdir  "$dir"
    if [ $? -eq 0 ]; then
        echo "🕒 Created on: $(date)"
        echo "✅ Directory '$dir' created successfully."
    else
        echo "❌ Failed to create the directory. Please check permissions."
    fi
fi


echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo ""
echo "🔁 Run again using: bash 02_create_check_dir.sh"
echo "=========================================="



#After checking for directory first time ,that is not present. Try creating directory after that and then check for directory. 