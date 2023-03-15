#!/bin/sh


case "$1" in
    lock)
        i3lock --color 000000 
        # betterlockscreen -l dimblur -- --time-str="%H:%M"
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        i3lock --color 000000 && systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
