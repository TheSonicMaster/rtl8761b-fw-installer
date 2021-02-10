#!/bin/bash
#
# Installs firmware for Realtek Bluetooth device rtl8761b on any Linux distro.
# Copyright (C) The Sonic Master 2021.
set -e
if [ $EUID -ne 0 ]; then
  echo "Error: Must be run as root." >&2
  exit 1
fi
mkdir -p /lib/firmware/rtl_bt
curl -s https://raw.githubusercontent.com/Realtek-OpenSource/android_hardware_realtek/rtk1395/bt/rtkbt/Firmware/BT/rtl8761b_fw -o /usr/lib/firmware/rtl_bt/rtl8761b_fw.bin
echo "Installation complete. Now reboot your system."
echo "If still not working after reboot, then regenerate your initramfs."
