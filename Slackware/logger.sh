#!/bin/bash

# Gather firewall logs
echo "Firewall logs:"
cat /var/log/iptables.log

# Gather kernel logs
echo "Kernel logs:"
dmesg | grep -i error

# Gather system messages
echo "System messages:"
cat /var/log/messages

# Gather PostgreSQL logs
echo "PostgreSQL logs:"
cat /var/lib/pgsql/data/pg_log/postgresql-*.log

cat $ufw_logs $kernel_logs $messages_logs $postgres_logs > $combined_logs

echo "Logs collected and saved to $combined_logs"
