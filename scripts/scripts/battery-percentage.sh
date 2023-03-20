#!/bin/bash
# Requires crontab -e "*/5 * * * * ~/scripts/battery-percentage.sh"
power=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | tr -d "percentage:" | tr -d "%" | sed -e 's/ //g')
current=$(($power+0))
low=20
full=100

if [ "$current" -lt "$low" ]  # -lt == less than. Opposite is -gt
then
  notify-send "Plug the computer"
elif [ "$current" = "$full" ] #|| [ "$current" -gt "$full" ]
then
  notify-send "Battery full"
fi


