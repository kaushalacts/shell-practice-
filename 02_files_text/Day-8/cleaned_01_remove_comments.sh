clear
echo "============================================"
echo "   🐧 DAY 8 - PROBLEM 1 - SHELL CHALLENGE   "
echo "   🔹 REMOVE ALL COMMENTS FROM A SCRIPT 🔹  "
echo "============================================"
echo ""
if [ -z "$1" ]; then
    echo "❌ Usage: $0 <script_file>"
    exit 1
fi
input="$1"
output="cleaned_$1"
sed 's/
echo "✅ Done! Comments removed and saved to '$output'"
