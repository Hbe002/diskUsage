#!/bin/bash



# Define log directory
log_dir="$HOME/update_logs"
mkdir -p "$log_dir"  # Create folder if it doesn't exist

# Create log file with current date/time
log_file="$log_dir/sysinfo_$(date +"%F_%T").log"

# Start log
echo " System Info Log - $(date)" | tee -a "$log_file"
echo "----------------------------------------" | tee -a "$log_file"

# Show current date and time
echo " Current Time: $(date)" | tee -a "$log_file"

# Show who is logged in
echo " Logged-in User: $USER" | tee -a "$log_file"

# Show disk usage
echo " Disk Usage:" | tee -a "$log_file"
df -h | tee -a "$log_file"

# End message
echo " Task Completed at: $(date)" | tee -a "$log_file"

# Send desktop notification
notify-send "System Info Task" "Log has been saved successfully!"

