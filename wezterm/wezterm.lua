-- Put me in ~/.config/wezterm/wezterm.lua
local wezterm = require("wezterm")
local gruvbox = require("gruvbox")

return {
	font_size = 15.5,
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	tab_bar_at_bottom = true,
	color_scheme = gruvbox["color_scheme"],
	color_schemes = gruvbox["color_schemes"],
	hide_tab_bar_if_only_one_tab = true,
}
