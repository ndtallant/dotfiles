-- Put me in ~/.config/wezterm/wezterm.lua
local wezterm = require("wezterm")

return {
	font_size = 15.5,
	line_height = 1.2,
	font = wezterm.font("JetBrainsMono Nerd Font Mono"),
	tab_bar_at_bottom = true,

	colors = {
		ansi = {
			"#414b50",
			"#e67e80",
			"#a7c080",
			"#dbbc7f",
			"#7fbbb3",
			"#d699b6",
			"#83c092",
			"#d3c6aa",
		},
		background = "#272e33",
		brights = {
			"#475258",
			"#e67e80",
			"#a7c080",
			"#dbbc7f",
			"#7fbbb3",
			"#d699b6",
			"#83c092",
			"#d3c6aa",
		},
		cursor_bg = "#d3c6aa",
		cursor_border = "#d3c6aa",
		cursor_fg = "#272e33",
		foreground = "#d3c6aa",
	},
	hide_tab_bar_if_only_one_tab = true,
}
