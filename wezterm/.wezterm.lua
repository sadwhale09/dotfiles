local wezterm = require("wezterm")
local config = {}

config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"
config.scrollback_lines = 5000
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0, -- Now, tmux status bar will look gucci
}

return config
