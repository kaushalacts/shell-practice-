#!/bin/bash


# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘


# ===============================================
# 🚀 SHELL SCRIPT - KILL BY PROCESS NAME
# ===============================================
# 💡 HOW TO RUN:
#   📦 MobaXterm/WSL:
#     cd ~/shell-practice/03_system_monitoring/
#     chmod +x 05_kill_by_name.sh
#     ./45_kill_by_name.sh
#   🧰 Git Bash:
#     cd /c/Users/YourName/path/to/shell-practice/03_system_monitoring/
#     chmod +x 05_kill_by_name.sh
#     ./05_kill_by_name.sh
# ===============================================

echo "=============================="
echo " 🔪 Kill Process by Name Tool  "
echo "=============================="
read -p "Enter the process name to kill: " pname

pids=$(pgrep -f "$pname")

if [[ -z "$pids" ]]; then
    echo "⚠️ No process found with name: $pname"
else
    echo "🔪 Killing processes: $pids"
    kill -9 $pids
    echo "✅ Killed all '$pname' processes"
fi
