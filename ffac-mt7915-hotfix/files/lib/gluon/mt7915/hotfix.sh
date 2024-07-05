#!/bin/sh
logger -t "ffac-mt7915-hotfix" -p err "reloading wifi firmware now"
rmmod mt7915e
# fix for ffac-ssid-changer to remove old hostapd config files
rm /var/run/hostapd-*.conf*
modprobe mt7915e
wifi
