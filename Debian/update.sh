#!/bin/bash


echo "First make a backup of packages lists"

# backup from exsiting packages
sudo apt-clone clone /path/to/backup_file


echo "Starting system update and upgrade"

# Update package lists
sudo apt-get update

# Upgrade packages
sudo apt-get upgrade -y
