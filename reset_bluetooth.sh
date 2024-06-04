#!/bin/bash

# Restart Bluetooth
echo "Restarting bluetooth"
sudo service bluetooth restart

# Reload modules 
echo "Reloading modules"
sudo rmmod btusb
sudo modprobe btusb

# Unblock if needed
echo "Unblocking connections"
sudo rfkill unblock bluetooth
