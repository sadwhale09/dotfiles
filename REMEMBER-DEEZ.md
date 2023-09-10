## Open a GUI apps (gparted and wireshark) as root under Wayland:
> sudo -EH *app name*

## Make thuanr dark mode:
> ~/.config/gtk-3.0/settings.ini
>
> [Settings]
> gtk-application-prefer-dark-theme=1
> gtk-theme-name = "Adwaita-dark"

**Note: Relogging helps to apply the results.**

## Tmux
When stowing tmux, must do:
> C-b, :source-file ~/.config/tmux/tmux.conf


## Change default shell
> chsh --shell /bin/zsh
