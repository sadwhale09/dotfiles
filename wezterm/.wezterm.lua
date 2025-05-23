local wezterm = require("wezterm")
local config = {}

config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"
config.scrollback_lines = 5000
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = "0.5cell",
	right = "0.5cell",
	top = 0,
	bottom = 0, -- Now, tmux status bar will look gucci
}

return config
