#!/bin/bash
#set -e

# bring up external usb dongle
hciconfig hci0 up

# add zigbees usb ids to serial module
# (module is loaded via config.json)
echo "10c4 89fb" > /sys/module/cp210x/drivers/usb-serial\:cp210x/new_id

