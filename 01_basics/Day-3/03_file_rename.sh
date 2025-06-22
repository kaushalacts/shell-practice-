#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 03_file_rename.sh
# Description: Prints the new file name. 

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 03: Rename the file!"
echo "   📅 Day 3 | Task 3"
echo "=========================================="
 
filename="myfile.txt"

 
old_file="myfile.txt"
new_file="shell_file.txt"

echo "🔁 Renaming '$old_file' to '$new_file'..."


if [ -f "$old_file" ]; then
    mv "$old_file" "$new_file"
    echo "✅ File renamed successfully."
else
    echo "❌ File '$old_file' does not exist."
fi



 
echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 03_file_rename.sh"
echo "=========================================="