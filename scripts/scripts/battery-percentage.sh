#!/bin/bash
# Requires crontab -e "*/5 * * * * ~/scripts/battery-percentage.sh"
power=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | tr -d "percentage:" | tr -d "%" | sed -e 's/ //g')
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | sed -e 's/ //g')  # Apparently `tr -d` deletes all occurences of symbols in " "
current=$(($power+0))
low=25
full=100

if [ "$current" -lt "$low" ]; then  # -lt == less than. Opposite is -gt
  if [ "$state" == "state:discharging" ]; then
    notify-send -u critical "Plug the computer"; mpv ./sounds/anon-odkurz-salon.mp3
  fi
  # elif [ "$current" = "$full" ] #|| [ "$current" -gt "$full" ]
elif [ "$state" = "full" ]; then #|| [ "$current" -gt "$full" ]
  notify-send "Battery full"
fi

# TODO Use binary operators instead of if statements
# [ "$state" == "discharging" ] && notify-send -u critical "Plug the computer"
# [ "$current" -lt "$low" ] && notify-send -u critical "Plug the computer"
