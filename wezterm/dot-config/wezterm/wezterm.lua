-- Put me in ~/.config/wezterm/wezterm.lua
local wezterm = require("wezterm")

return {
	font_size = 16.5,
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	tab_bar_at_bottom = true,
	color_scheme = "nightfox",
	-- Be extra
	--hide_tab_bar_if_only_one_tab = true,
	--window_background_opacity = 0.75,
	--macos_window_background_blur = 25,
	--window_decorations = "RESIZE",
}
