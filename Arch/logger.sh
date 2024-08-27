#!/bin/bash

# Gather kernel logs
sudo dmesg > kernel_logs.txt

# Gather UFW logs
sudo cat /var/log/ufw.log > ufw_logs.txt

# Gather messages logs
sudo cat /var/log/messages > messages_logs.txt

# Gather PostgreSQL logs
sudo cat /var/log/postgresql/postgresql.log > postgresql_logs.txt

echo "Logs have been collected and saved to respective files."
