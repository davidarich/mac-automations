#!/bin/bash

SSID=$(networksetup -getairportnetwork en0 | awk -F ': ' '{print $2}')

# Check if the current SSID to determine if I'm connected at network
if [ "$SSID" == "wireless.expedient.com" ]; then

  # Make sure lync isn't already running
  LYNC_PROCESSES=$(ps -ef | grep "/Applications/Microsoft Lync.app/Contents/MacOS/Microsoft Lync" | grep -v grep | wc -l)

  if [ $LYNC_PROCESSES -eq 0 ]; then
    # Run lync
    "/Applications/Microsoft Lync.app/Contents/MacOS/Microsoft Lync"
  fi

fi
