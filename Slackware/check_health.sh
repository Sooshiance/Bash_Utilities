#!/bin/bash

# Check CPU Usage
echo "CPU Usage:"
top -bn 1 | grep '%Cpu' | cut -d ',' -f 1

# Check Memory Usage
echo "Memory Usage:"
free -m

# Check Disk Space Usage
echo "Disk Space Usage:"
df -h

# List Top 5 Running Processes by Memory Usage
echo "Top 5 Running Processes by Memory Usage:"
ps aux --sort=-%mem | head -6
