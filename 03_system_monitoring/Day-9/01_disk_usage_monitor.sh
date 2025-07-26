#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘

 
# ===============================================
# 🚀 SHELL SCRIPT - DISK USAGE MONITOR
# ===============================================
# 💡 MONITOR DISK USAGE ACROSS PARTITIONS
# ===============================================

echo "=============================="
echo "     📦 Disk Usage Monitor     "
echo "=============================="
df -h | grep -v tmpfs

# ===============================================
# ✅ HOW TO RUN THIS SCRIPT ON DIFFERENT PLATFORMS
# -----------------------------------------------
# 🖥️ 1. MobaXterm or WSL (Ubuntu):
#     cd ~/shell-practice/03_system_monitoring/
#     chmod +x 01_disk_usage_monitor.sh
#     ./01_disk_usage_monitor.sh
#
# 🧰 2. Git Bash (Windows):
#     cd /c/Users/YourName/path/to/shell-practice/03_system_monitoring/
#     chmod +x 01_disk_usage_monitor.sh
#     ./01_disk_usage_monitor.sh
#
# ☁️ 3. AWS EC2 (Ubuntu/CentOS/RHEL):
#     ssh -i your-key.pem ec2-user@your-ec2-public-ip  # or ubuntu@ip
#     git clone https://github.com/kaushalacts/shell-practice.git
#     cd shell-practice/03_system_monitoring/
#     chmod +x 01_disk_usage_monitor.sh
#     ./01_disk_usage_monitor.sh
# ===============================================
