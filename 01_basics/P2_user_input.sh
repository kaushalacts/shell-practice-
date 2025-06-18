#!/bin/bash

# ┌──────────────────────────────────────────────┐
# │ 📥 Script 02: User Input and Variables       │
# └──────────────────────────────────────────────┘

clear
echo "=========================================="
echo "   🐚 Shell Scripting Practice Series 💻"
echo "------------------------------------------"
echo "   🚀 Script 02: User Input"
echo "   📅 Day 1 | Task 2"
echo "=========================================="
echo

# Ask for user's name
read -p "👉 Please enter your name: " username

# Greet the user
echo
echo "👋 Hello, $username! Welcome to Day 1 of your Shell scripting journey 🚀"
echo "💡 Tip: You can use \`read\` to collect user input into variables."
echo
echo "🔁 Run again using: bash P2_user_input.sh"
echo "=========================================="
