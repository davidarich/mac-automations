#!/bin/bash

SSID=$(networksetup -getairportnetwork en0 | awk -F ': ' '{print $2}')

# Check if the current SSID to determine if I'm connected at network
if [ "$SSID" == "wireless.expedient.com" ]; then

  # Run lync
  "/Applications/Microsoft Lync.app/Contents/MacOS/Microsoft Lync"

fi
