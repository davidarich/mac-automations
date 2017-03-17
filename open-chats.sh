#!/bin/bash

# Determine the current wireless network's SSID
SSID=$(networksetup -getairportnetwork en0 | awk -F ': ' '{print $2}')

# Check if the current SSID is my work network
if [ "$SSID" == "wireless.expedient.com" ]; then

  # Make sure lync isn't already running
  LYNC_PROCESS_COUNT=$(ps -ef | grep "/Applications/Microsoft Lync.app/Contents/MacOS/Microsoft Lync" | grep -v grep | wc -l)

  if [ $LYNC_PROCESS_COUNT -eq 0 ]; then
    # Run Lync detached from shell
    nohup "/Applications/Microsoft Lync.app/Contents/MacOS/Microsoft Lync" &
  fi

  # Make sure teams isn't already running
  TEAMS_PROCESS_COUNT=$(ps -ef | grep "/Applications/Microsoft Teams.app/Contents/MacOS/Teams" | grep -v grep | wc -l)

  if [ $TEAMS_PROCESS_COUNT -eq 0 ]; then

    # Run Microsoft Teams detached from shell
    nohup "/Applications/Microsoft Teams.app/Contents/MacOS/Teams" &
  fi

fi
