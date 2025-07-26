#!/bin/bash
# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘


# ===============================================
# 🚀 SHELL SCRIPT - CPU USAGE MONITOR
# ===============================================


echo "=============================="
echo "     ⚙️ CPU Usage Monitor       "
echo "=============================="
if command -v mpstat >/dev/null 2>&1; then
    mpstat -P ALL 1 1 | awk '/Average:/ && $2 ~ /[0-9]/ {print "CPU" $2 ": " 100 - $13 "% used"}'
    top -n 1| head -n 10
else
    echo "❌ 'mpstat or top' command not found. Run this script in WSL or a Linux environment."
fi






# ===============================================
# ✅ HOW TO RUN THIS SCRIPT ON DIFFERENT PLATFORMS
# -----------------------------------------------
# 🖥️ 1. MobaXterm or WSL (Ubuntu):
#     cd ~/shell-practice/03_system_monitoring/
#     chmod +x 03_cpu_usage.sh
#     ./03_cpu_usage.sh
#
# 🧰 2. Git Bash (Windows):
#     cd /c/Users/YourName/path/to/shell-practice/03_system_monitoring/
#     chmod +x 03_cpu_usage.sh
#     ./03_cpu_usage.sh
#
# ☁️ 3. AWS EC2 (Ubuntu/CentOS/RHEL):
#     ssh -i your-key.pem ec2-user@your-ec2-public-ip  # or ubuntu@ip
#     git clone https://github.com/kaushalacts/shell-practice.git
#     cd shell-practice/03_system_monitoring/
#     chmod +x 03_cpu_usage.sh
#     ./03_cpu_usage.sh
# ===============================================
