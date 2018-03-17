#!/bin/bash

mount -o remount,rw /sys

mkdir -p /tmp/mnt
mount -o ro /dev/mmcblk0p3 /tmp/mnt
insmod /tmp/mnt/lib/modules/`uname -r`/kernel/drivers/usb/serial/usbserial.ko
insmod /tmp/mnt/lib/modules/`uname -r`/kernel/drivers/usb/serial/cp210x.ko
umount /tmp/mnt

echo "${USBID}" > /sys/module/cp210x/drivers/usb-serial\:cp210x/new_id

# bring up external usb dongle
hciconfig hci0 up

