#!/bin/bash

battery_health=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep "state" | awk '{print $2}')

echo "Battery Health: $battery_health"
