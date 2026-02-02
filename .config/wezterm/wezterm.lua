-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "OneDark (base16)"

config.font = wezterm.font_with_fallback({ "LiterationMono Nerd Font", "Symbols Nerd Font Mono" })

config.font_size = 24

config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false

-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 10

config.warn_about_missing_glyphs = true
config.native_macos_fullscreen_mode = true
-- and finally, return the configuration to wezterm
--

return config
