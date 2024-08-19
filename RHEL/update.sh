#!/bin/bash

# Define backup directory
BACKUP_DIR="/var/backups/package_lists"
mkdir -p $BACKUP_DIR

# Backup package lists
echo "Backing up package lists..."
rpm -qa > $BACKUP_DIR/package_list_$(date +%F).txt

# Update package lists
echo "Updating package lists..."
sudo yum check-update

# Upgrade packages
echo "Upgrading packages..."
sudo yum update -y

# Clean up
echo "Cleaning up..."
sudo yum clean all

echo "Update and upgrade completed successfully."
