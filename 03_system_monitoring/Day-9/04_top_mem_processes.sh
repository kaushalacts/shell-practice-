#!/bin/bash


# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘

# ===============================================
# 🚀 SHELL SCRIPT - TOP MEMORY PROCESSES
# ===============================================
# 💡 HOW TO RUN:
#   📦 MobaXterm/WSL:
#     cd ~/shell-practice/03_system_monitoring/
#     chmod +x 04_top_mem_processes.sh
#     ./04_top_mem_processes.sh
#   🧰 Git Bash:
#     cd /c/Users/YourName/path/to/shell-practice/03_system_monitoring/
#     chmod +x 04_top_mem_processes.sh
#     ./04_top_mem_processes.sh
# ===============================================

echo "=============================="
echo " 🔥 Top 5 Memory-Using Procs   "
echo "=============================="
ps aux --sort=-%mem | head -n 6