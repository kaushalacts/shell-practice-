#!/bin/bash

# ┌─────────────────────────────────────────────┐
# │           📦 SYSTEM MONITORING 📦           │
# │         🚀 Disk Usage Report Tool 🚀        │
# │              — Day 9 of 20 —                │
# └─────────────────────────────────────────────┘

 
# ===============================================
# 🚀 SHELL SCRIPT - PROCESS MONITOR
# ===============================================
# 💡 MONITOR DISK USAGE ACROSS PARTITIONS
# ===============================================

# Name of the process to monitor (change this as needed)

PROCESS_NAME="nginx"

LOG_FILE="$HOME/process_monitor.log"

# Infinite loop
while true; do
    # Check if the process is running
    if pgrep -x "$PROCESS_NAME" > /dev/null; then
        STATUS="[$(date)] ✅ $PROCESS_NAME is running"
    else
        STATUS="[$(date)] ❌ $PROCESS_NAME is NOT running"
    fi

# Print the status
    echo "$STATUS"

    if [ LOG_FILE ]; then
        # Append the status to the log file
        echo "$STATUS" >> "$LOG_FILE"
    else
        echo "Log file $LOG_FILE does not exist. Creating it now."
        touch "$LOG_FILE"
        echo "$STATUS" >> "$LOG_FILE"
    fi


    

    # Wait for 5 seconds before the next check
    sleep 5
done

#===============================================

#TRY TO RUN THIS SCRIPT IN THE BACKGROUND ON WSL IF YOU ARE A WINDOWS USER.
#=============================================================================


echo "Are you enjoying this script? If so, please consider supporting my work by likind it. "