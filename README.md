# rtl8761b-fw-installer
Installs firmware for Realtek Bluetooth device rtl8761b on any Linux distro.
# Requirements
- Root access (or sudo)
- curl
# Usage
Download and run the script in one command using this:
```
curl -s https://raw.githubusercontent.com/TheSonicMaster/rtl8761b-fw-installer/main/rtl8761b-fw-installer.sh | sudo bash
```
Alternatively you can download the script as a file and run it with the following commands:
```
curl -Os https://raw.githubusercontent.com/TheSonicMaster/rtl8761b-fw-installer/main/rtl8761b-fw-installer.sh
chmod 755 rtl8761b-fw-installer.sh
sudo ./rtl8761b-fw-installer.sh
```
# Notes
Remember to reboot after running the script! If the device still doesn't work after rebooting, then regenerate your initramfs with one of the following commands depending on your distro (and reboot after doing so):
- Debian/Ubuntu (and derivatives):
```
sudo update-initramfs -u
```
- Arch Linux (and derivatives):
```
sudo mkinitcpio -P linux
```
- Other distros: Consult your distro's documentation/wiki.
