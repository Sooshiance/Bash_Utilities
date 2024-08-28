#!/bin/bash

# Function to get CPU usage
get_cpu_usage() {
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
awk '{print 100 - $1"%"}'
}

# Function to get Memory usage
get_memory_usage() {
echo "Memory Usage:"
free -h | awk '/^Mem:/ {print $3 "/" $2}'
}

# Function to get Disk space usage
get_disk_usage() {
echo "Disk Space Usage:"
df -h | awk '$NF=="/"{print $3 "/" $2 " (" $5 ")"}'
}

# Main function to display system health
display_system_health() {
echo "System Health Check:"
echo "---------------------"
get_cpu_usage
echo "---------------------"
get_memory_usage
echo "---------------------"
get_disk_usage
echo "---------------------"
}

# Execute the main function
display_system_health
