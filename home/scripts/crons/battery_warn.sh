#!/bin/sh

threshold=4
level=$(acpi | cut -f2 -d, | cut -f1 -d%)

if [ $level -lt $threshold ]; then
  DISPLAY=:0 DISPLAY=:0 zenity --info --text 'Battery low.'&
  # or use notify-send
else
  exit 0
fi

exit 0
