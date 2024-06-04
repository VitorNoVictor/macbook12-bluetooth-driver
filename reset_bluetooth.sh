#!/bin/bash

# Restart Bluetooth
sudo service bluetooth restart

# Reload modules 
sudo rmmod btusb
sudo modprobe btusb

# Unblock if needed
sudo rfkill unblock bluetooth

# Start the bluetoothctl interactive command
# bluetoothctl << EOF
# # List all paired devices to get their MAC addresses
# devices

# # Now loop through each device and remove it
# for device in $(bluetoothctl devices | cut -f 2 -d ' ')
# do
#     echo "Removing device: $device"
#     # Remove the paired device
#     remove $device
# done
# EOF

# echo "All paired Bluetooth devices have been removed."
