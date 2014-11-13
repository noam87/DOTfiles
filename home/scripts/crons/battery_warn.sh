#!/bin/sh

# Checks if battery is low and display message
# add to cron: `crontab -e`
#http://stackoverflow.com/questions/5398014/using-crontab-to-execute-script-every-minute-and-another-every-24-hours
#
# * * * * * ~/.scripts/crons/battery_warn.sh

threshold=4
level=$(acpi | cut -f2 -d, | cut -f1 -d%)

if [ $level -lt $threshold ]; then
  DISPLAY=:0 DISPLAY=:0 zenity --info --text 'Battery low.'&
  # or use notify-send
else
  exit 0
fi

exit 0
