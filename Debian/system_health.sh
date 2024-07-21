#!/bin/bash


echo "System Health Check"


# CPU usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
awk '{print 100 - $1"%"}'


# Memory usage
echo "Memory Usage:"
free -h


# Disk space
echo "Disk Space Usage:"
df -h


# Running processes
echo "Top 5 Running Processes by Memory Usage:"
ps aux --sort=-%mem | head -n 6
