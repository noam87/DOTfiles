#!/bin/sh

threshold=92
level=$(acpi | cut -f2 -d, | cut -f1 -d%)

if [ $level -lt $threshold ]; then
  DISPLAY=:0 DISPLAY=:0 zenity --info --text 'Battery low. Sleep in 1 minute.'&
  # or use notify-send
  sleep 2
  pm-suspend
else
  exit 0
fi

exit 0
