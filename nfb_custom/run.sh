#!/bin/bash

# zigbee is loaded via config.json
# this is not possible from inside container

# bring up external usb dongle
hciconfig hci0 up

