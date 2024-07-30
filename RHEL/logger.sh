#!/bin/bash

# Collect UFW logs
ufw_logs="/var/log/ufw.log"

# Collect kernel logs
kernel_logs="/var/log/messages"

# Collect system messages
messages_logs="/var/log/messages"

# Collect Postgres database logs
postgres_logs="/var/log/postgresql/postgresql.log"

# Combine all logs into a single file
combined_logs="/path/to/combined_logs.txt"

cat $ufw_logs $kernel_logs $messages_logs $postgres_logs > $combined_logs

echo "Logs collected and saved to $combined_logs"
