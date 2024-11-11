-- WezTerm configuration
local wezterm = require("wezterm")

return {
	-- Theme Configuration
	color_scheme = 'GruvboxDarkHard',

	-- Font Configuration
	font = wezterm.font("JetBrainsMono Nerd Font Propo", { weight = "Thin" }),
	font_size = 14.0,
	font_rules = {
		{
			italic = true,
			font = wezterm.font("JetBrainsMono Nerd Font Propo", { weight = "Thin", italic = true }),
		},
		{ intensity = "Bold", font = wezterm.font("JetBrainsMono Nerd Font Propo", { weight = "Bold" }) },
		{
			italic = true,
			intensity = "Bold",
			font = wezterm.font("JetBrainsMono Nerd Font Propo", { weight = "Bold", italic = true }),
		},
	},

	send_composed_key_when_left_alt_is_pressed = true,

	max_fps = 120,

	-- Cursor configuration
	default_cursor_style = "BlinkingBlock",

	-- Window decorations (titlebar only)
	-- window_decorations = "NONE",
	window_decorations = "RESIZE",

	enable_tab_bar = false,

	-- Padding and margin (setting them to 0 for no padding/margin)
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- Opacity configuration (WezTerm doesn't support background_opacity directly)
	-- Use window_background_opacity instead.
	window_background_opacity = 0.7,

	-- Placement and window behavior
	adjust_window_size_when_changing_font_size = false,
	initial_rows = 40,
	initial_cols = 120,
	-- window_frame = {
	-- 	active_titlebar_bg = "#282828", -- Gruvbox background color; customize if needed
	-- 	inactive_titlebar_bg = "#282828",
	-- },

	-- Terminal bell (disable audio bell)
	audible_bell = "Disabled",

	-- Window position (WezTerm does not have direct placement strategy like Kitty's top-left)
	-- You may need to manually position it after launch if you require specific placement.
}
