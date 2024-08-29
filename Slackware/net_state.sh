#!/bin/bash

# Check if tcpdump and route commands are available
if ! command -v tcpdump &> /dev/null || ! command -v route &> /dev/null; then
    echo "tcpdump or route command not found. Please make sure they are installed."
    exit 1
fi

# Check network connectivity using tcpdump
echo "Checking network connectivity using tcpdump..."
sudo tcpdump -c 5 -n -i any icmp

# Display routing table using route command
echo "Displaying routing table..."
route -n
