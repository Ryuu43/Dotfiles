-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Spawn a pwsh shell in login mode
config.default_prog = { "pwsh.exe", "-NoLogo" }

-- Launch size startup

config.initial_cols = 130
config.initial_rows = 40
-- This is where you actually apply your config choices

-- Disable ligatures
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
config.scrollback_lines = 3000
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true })
warn_about_missing_glyphs = false
config.font_size = 10
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.6
config.win32_system_backdrop = "Acrylic"
config.macos_window_background_blur = 10

-- my mouse config:
config.mouse_bindings = {
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "CTRL|SHIFT",
		action = wezterm.action.StartWindowDrag,
	},
}
config.window_padding = {
	left = 3,
	right = 3,
	top = 3,
	bottom = 0,
}

-- my coolnight colorscheme:
config.colors = {
	foreground = "#DCDFE4",
	background = "#001B26",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#282C34", "#61AFEF", "#56B6C2", "#98C379", "#C678DD", "#E06C75", "#DCDFE4", "#E5C07B" },
	brights = { "#282C34", "#61AFEF", "#56B6C2", "#98C379", "#C678DD", "#E06C75", "#DCDFE4", "#E5C07B" },
}

-- and finally, return the configuration to wezterm
return config
