#!/bin/bash

# Get the battery device path
battery_path=$(upower -e | grep battery)

# Check if a battery was found
if [ -z "$battery_path" ]; then
  echo "No battery found."
  exit 1
fi

# Get the battery health information
battery_health=$(upower -i $battery_path | grep "percentage" | awk '{print $2}')

# Display the battery health
echo "Battery Health: $battery_health"
