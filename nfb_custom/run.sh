#!/bin/bash
set -e

# bring up external usb dongle
hciconfig hci0 up

# initialize zigbee module
modprobe cp210x
echo "10c4 89fb" > /sys/module/cp210x/drivers/usb-serial\:cp210x/new_id

