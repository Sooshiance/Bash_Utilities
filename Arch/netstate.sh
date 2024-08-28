#!/bin/bash

# Run tcpdump in the background and write output to a file
tcpdump -i any -w internet_connections.pcap &

# Wait for 30 seconds (you can adjust this as needed)
sleep 30

# Stop tcpdump process
pkill tcpdump
