#!/bin/bash


LOG_FILE="/path/to/network_log.txt"


echo "Monitoring network activity. Press Ctrl+C to stop."

# Monitor network activity
sudo tcpdump -i any -w $LOG_FILE


echo "Network activity logged to $LOG_FILE"
