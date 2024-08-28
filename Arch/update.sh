#!/bin/bash

# Function to create a backup of installed packages
backup_packages() {
    echo "Creating a backup of installed packages..."
    pacman -Qqe > ~/package_list.txt
    echo "Backup completed. The list of installed packages is saved in ~/package_list.txt"
}

# Function to update the package database
update_packages() {
    echo "Updating package database..."
    sudo pacman -Sy
}

# Function to upgrade the system
upgrade_system() {
    read -p "Do you want to upgrade the system? (y/n): " choice
    case "$choice" in
    y|Y ) sudo pacman -Syu;;
    n|N ) echo "System upgrade skipped.";;
    * ) echo "Invalid choice. Please enter y or n.";;
esac
}

# Main script execution
backup_packages
update_packages
upgrade_system

echo "Script execution completed."