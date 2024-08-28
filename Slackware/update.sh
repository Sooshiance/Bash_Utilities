#!/bin/bash

# Backup existing packages list
echo "Backing up existing packages list..."
ls /var/log/packages/ > ~/packages_list_backup.txt

# Update the packages list
echo "Updating packages list..."
sudo slackpkg update

# Ask user if they want to upgrade the distro
read -p "Do you want to upgrade your distribution? (y/n): " choice
if [ "$choice" == "y" ]; then
    sudo slackpkg upgrade-all
else
    echo "No upgrades will be performed."
fi
