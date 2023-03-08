#!/bin/sh

# grep -v "#" ~/scripts/unicode | rofi -dmenu -i -l 10 -fn Monospace-18 | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
# xrandr | grep VGA | rofi -dmenu -i -l 10 -fn Monospace-18

xrandr --output VGA1 --right-of LVDS1 --auto
# grep -v "#" ~/scripts/displays | rofi -dmenu | tr -d '\n' | xrandr

if [[xrandr -q | grep "VGA1 connected"]]; then
  xrandr --output VGA1 --right-of LVDS1 --auto
else
  xrandr --auto
fi
