#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │ 🐧 Happy Learning – Shell Scripting Journey │
# └─────────────────────────────────────────────┘

# Script Name: 01_count_words.sh
# Description: Prints number of words in a file.

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 01: Count _words in a file!"
echo "   📅 Day 3 | Task 1"
echo "=========================================="
 
filename="myfile.txt"
word_count=$(wc -w < "$filename")
echo "Word Count : $word_count "



 
echo
echo "💡 Tip: Always start with '#!/bin/bash' at the top."
echo "📂 Save your scripts with '.sh' extension."
echo
echo "🔁 Run again using: bash 01_count_words.sh"
echo "=========================================="