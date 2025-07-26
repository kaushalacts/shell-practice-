#!/bin/bash


# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘

# ===============================================
# 🚀 SHELL SCRIPT - MEMORY USAGE MONITOR
# ===============================================
# 💡 HOW TO RUN (MobaXterm or WSL):
# 1. cd ~/shell-practice/03_system_monitoring/
# 2. chmod +x 02_memory_usage.sh
# 3. ./02_memory_usage.sh
# ===============================================

echo "=============================="
echo "     🧠 Memory Usage Monitor   "
echo "=============================="
if command -v free >/dev/null 2>&1; then
    free -h
else
    echo "❌ 'free' command not found. Run this script in WSL or a Linux environment."
fi
 


# ===============================================
# ✅ HOW TO RUN THIS SCRIPT ON DIFFERENT PLATFORMS
# -----------------------------------------------
# 🖥️ 1. MobaXterm or WSL (Ubuntu):
#     cd ~/shell-practice/03_system_monitoring/
#     chmod +x 02_memory_usage.sh
#     ./02_memory_usage.sh
#
# 🧰 2. Git Bash (Windows):
#     cd /c/Users/YourName/path/to/shell-practice/03_system_monitoring/
#     chmod +x 02_memory_usage.sh
#     ./02_memory_usage.sh
#
# ☁️ 3. AWS EC2 (Ubuntu/CentOS/RHEL):
#     ssh -i your-key.pem ec2-user@your-ec2-public-ip  # or ubuntu@ip
#     git clone https://github.com/kaushalacts/shell-practice.git
#     cd shell-practice/03_system_monitoring/
#     chmod +x 02_memory_usage.sh
#     ./02_memory_usage.sh
# ===============================================
