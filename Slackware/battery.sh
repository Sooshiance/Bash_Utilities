#!/bin/bash

# Get the battery information
battery_info=$(upower -i $(upower -e | grep battery))

# Extract relevant details
battery_percentage=$(echo "$battery_info" | grep "percentage" | awk '{print $2}')
battery_state=$(echo "$battery_info" | grep "state" | awk '{print $2}')
battery_health=$(echo "$battery_info" | grep "energy-rate" | awk '{print $2}')

# Display the information
echo "Battery Percentage: $battery_percentage"
echo "Battery State: $battery_state"
echo "Battery Health (Energy Rate): $battery_health"

# Optionally, you can add more details or format the output as needed.
