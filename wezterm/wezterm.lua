-- Put me in ~/.config/wezterm/wezterm.lua
local wezterm = require("wezterm")

return {
	font_size = 15.5,
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	tab_bar_at_bottom = true,
	color_scheme = "terafox",
	hide_tab_bar_if_only_one_tab = true,
}
