# Colorful prompt
autoload -U colors && colors
setopt PROMPT_SUBST     # This allows to print command output in a prompt (git branch ...)
# PROMPT="%B%F{green}[%n@%m]%F{blue}[%F{reset_color}%~%F{blue}]"$'\n'"%F{yellow}[$(git branch | awk '/*/ {print $2}')]%F{reset_color}$%b "
# TODO: Add git status indicator
PROMPT="%B%F{green}[%n@%m]%F{blue}[%F{reset_color}%~%F{blue}]"$'\n'"%F{reset_color}$%b "
# RPROMPT='%t'          # This makes text on the right (a clock for e example)


export VISUAL=nvim
export EDITOR=nvim

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# Include hidden files.


# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$HOME/.local/share/zsh_history"

bindkey -e	# emacs keybinding (like in default bash)
#bindkey -v	# vi keybinding


source $HOME/.config/shell/aliasrc

source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/colored-man-pages/colored-man-pages.plugin.zsh
