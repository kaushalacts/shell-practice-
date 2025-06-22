#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 04_delete_file.sh
# Description: Prints the file deleted or not after user confirmation.

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 04: Delete  the file!"
echo "   📅 Day 3 | Task 4"
echo "=========================================="
 
 #Creating a new file and then after user confirmation it will be deleted. find the filename as tony_stark.txt

read -p " Enter the file name you want to delete:" filename

if [ -f "$filename" ]; then
    read -p "Are you sure you want to delete '$filename'? (y/n): " confirm
    if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
        rm "$filename"
        echo "✅ File '$filename' deleted successfully."
    else
        echo "❎ Deletion cancelled."
    fi
else
    echo "❌ File '$filename' does not exist."
fi
 
echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 04_delete_file.sh"
echo "=========================================="