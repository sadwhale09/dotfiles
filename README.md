# Dotfiles

# Some knowledge

## Open a GUI apps (gparted and wireshark) as root under Wayland:
```sh
sudo -EH <app name>
```

## Make thuanr dark mode:
> File: ~/.config/gtk-3.0/settings.ini

```c
[Settings]
gtk-application-prefer-dark-theme=1
gtk-theme-name = "Adwaita-dark"
```

**Note: Relogging helps to apply the results.**

## Tmux
After stowing tmux, must do:
```sh
tmux source-file ~/.config/tmux/tmux.conf
```


## Change default shell
```sh
sudo chsh -s /bin/zsh $USER
```

## Bash prompt configuration tool
https://bash-prompt-generator.org/

## Nvim
Pre req: install *gcc* and *unzip*
```sh
git clone git@github.com:sadwhale09/nvim.git ~/.config/nvim
```

## Obsidian
```sh
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.5/Obsidian-1.4.5.AppImage
chmod +x Obsidian-*
sudo mv Obsidian-* /usr/local/bin/Obsidian
```

## Image to text
Install of Tesseract:
```sh
sudo yum install tesseract-devel leptonica-devel tesseract-langpack-pol
```

Usage for image with Polish text:
```sh
tesseract -l pol image.png output
```
Tesseract writes output with .txt extension
