#!/bin/bash

# =========================================
# 🧠 Day-7 Shell Challenge - Problem 5 (Cross-Platform)
# 📄 Monitor File Changes in Real Time
# ✅ Works on both Linux & Git Bash (Windows)
# =========================================

echo "========================================="
echo "🧠 Day-7 Shell Challenge - Problem 5"
echo "📄 Real-Time File Monitoring"
echo "========================================="

read -p "📂 Enter the filename to monitor: " filename

# Check file existence
if [[ ! -f "$filename" ]]; then
    echo "❌ File '$filename' not found."
    exit 1
fi

# Function: Use tail -f for Git Bash / fallback
# Function: Simulated full-file monitoring (for Git Bash / fallback)
monitor_with_tail() {
    echo "📡 Using fallback method (simulated full-file monitoring)"
    echo "🔍 Any changes in the file will be displayed (Ctrl+C to stop)"
    echo "--------------------------------------------------------------"

    temp_cache=$(mktemp)
    cp "$filename" "$temp_cache"

    while true; do
        sleep 2  # Check every 2 seconds
        if ! cmp -s "$filename" "$temp_cache"; then
            echo "🕒 Change detected at: $(date)"
            echo "📄 Updated content:"
            echo "--------------------------------------------------------------"
            cat "$filename"
            echo "--------------------------------------------------------------"
            cp "$filename" "$temp_cache"
        fi
    done
}


# Function: Use inotifywait (Linux only)
monitor_with_inotify() {
    echo "📡 Using inotifywait (full file monitoring)"
    echo "🔍 Any modification to the file will be shown (Ctrl+C to stop):"
    echo "--------------------------------------------------------------"
    while inotifywait -e modify "$filename" &> /dev/null; do
        echo "🕒 Change detected at: $(date)"
        echo "📄 Updated content:"
        echo "--------------------------------------------------------------"
        cat "$filename"
        echo "--------------------------------------------------------------"
    done
}

# Detect if inotifywait is available
if command -v inotifywait &> /dev/null; then
    monitor_with_inotify
else
    echo "⚠️ 'inotifywait' not found — switching to fallback method."
    monitor_with_tail
fi
echo "====================================================="
echo "# I have modified this for you..you can also run this in linux based systems and you can check for the chagnes" 
echo "#====================================================" 