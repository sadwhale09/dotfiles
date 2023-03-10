#/bin/sh

# grep -v "#" ~/scripts/unicode | dmenu -i -l 10 -fn Monospace-18 | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard

# Show picker in rofi instead
grep -v "#" ~/scripts/unicode | rofi -dmenu -i -l 10 -fn Monospace-18 | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard

pgrep -x dunst >/dev/null && notify-send "$(xclip -o -selection clipboard) copied to clipboard."
