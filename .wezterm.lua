-- pull the wezterm API
local wezterm = require 'wezterm'

-- will hold the config
local config = wezterm.config_builder()

-- HACK: apply my config choices below:

-- INFO: Colors + Themes

-- color scheme = catppuccin moccha
config.color_scheme = "Catppuccin Mocha"

-- INFO: Font stuff

--consider using hostname: https://wezfurlong.org/wezterm/config/lua/wezterm/hostname.html
--in order to determine the size of the font to be used


-- font = Maple Mono
config.font = wezterm.font "Maple Mono"
-- 18 is about as big i would like on MacOS
config.font_size = 16



-- INFO: Miscellaneous options

-- set cursor to blink as a line
config.default_cursor_style = "BlinkingBar"

-- start fullscreen
-- config.automatically_start_fullscreen = true


print(wezterm.gui.default_keys())





return config
