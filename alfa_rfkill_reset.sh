#!/bin/bash

rmmod rtl8187
rfkill block all
rfkill unblock all
modprobe rtl8187
rfkill unblock all
echo "Bringing wlan0 up"
ifconfig wlan0 up
