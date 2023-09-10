./config:

set $term kitty
set $files thunar


    # Start a file manager
    bindsym $mod+Shift+Return exec $files


set $this_much 50px

    # Move the focused window with the same, but add Shift
    bindsym $mod+Shift+$left move left $this_much
    bindsym $mod+Shift+$down move down $this_much
    bindsym $mod+Shift+$up move up $this_much
    bindsym $mod+Shift+$right move right $this_much


    bindsym $left resize shrink width $this_much
    bindsym $down resize grow height $this_much
    bindsym $up resize shrink height $this_much
    bindsym $right resize grow width $this_much



./config.d/unclutter.conf:
# Hide cursor after 5 seconds
seat * hide_cursor 5000

# Hide cursor when typing
seat * hide_cursor when-typing enable



./config.d/unclutter.conf:
input type:keyboard {
  xkb_layout pl
}
