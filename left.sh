#!/bin/bash

echo start

echo LEFT > /etc/hostname
sed -i 's/FA21-ICA4/LEFT/' /etc/hosts

echo auto enp0s8 >> /etc/network/interfaces
echo iface enp0s8 inet static >> /etc/network/interfaces
echo address 192.168.1.2 >> /etc/network/interfaces
echo netmask 255.255.255.0 >> /etc/network/interfaces

sed -i 's/# /ping -c 1 192.168.1.3 >> /etc/rc.local/' /etc/hostsecho
chmod +x /etc/rc.local

reboot
