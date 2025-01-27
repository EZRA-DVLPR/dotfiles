-- pull the wezterm API
local wezterm = require 'wezterm'

-- will hold the config
local config = wezterm.config_builder()

-- HACK: apply my config choices below:

-- INFO: Colors + Themes

-- color scheme = catppuccin moccha
config.color_scheme = "Catppuccin Mocha"

-- INFO: Font stuff

-- font = Maple Mono
config.font = wezterm.font "Maple Mono"

--consider using hostname: https://wezfurlong.org/wezterm/config/lua/wezterm/hostname.html
--in order to determine the size of the font to be used

-- 18 is about as big i would like on MacOS. 16 is comfy. 14 is as small as I would want to work with.
config.font_size = 16

-- INFO: Cursor

-- set cursor to blink as a vertical line
config.default_cursor_style = "BlinkingBar"

-- INFO: Tabs

-- basically all i want from the wezterm line is the way the tabs have the icons when shortened with the program name being shown
--https://github.com/michaelbrusegard/tabline.wez/tree/main/plugin/tabline
-- eg. Neovim with symbol for neovim
-- eg. zsh with terminal symbol for terminal

-- see how its used here:
-- https://github.com/michaelbrusegard/tabline.wez/blob/main/plugin/tabline/components/tab/process.lua
-- where they import symbol and use to display data which can be looked up via https://www.nerdfonts.com/cheat-sheet
-- I want to change the symbol based on the program that is open

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	-- make a set of colors based on the theme/preset used
  local palette = config.resolved_palette.tab_bar
  local colors = {
    bg = palette.background,
    tab = tab.is_active and palette.active_tab.bg_color or palette.inactive_tab.bg_color,
    fg = tab.is_active and palette.active_tab.fg_color or palette.inactive_tab.fg_color,
  }

	-- truncate name of tab if too long and add '...' to the end of the truncated tab title
	local tabtitle = tab.active_pane.title
	if #tabtitle > max_width then
	  tabtitle = wezterm.truncate_right(tabtitle, max_width - 1) .. "…"
	end

  return {
	--pre
    { Background = { Color = colors.bg } },
    { Foreground = { Color = colors.tab } },
    { Text = wezterm.nerdfonts.pl_right_hard_divider },
	
	--in
    { Background = { Color = colors.tab } },
    { Foreground = { Color = colors.fg } },
    { Text = tabtitle },

	--post
    { Background = { Color = colors.bg } },
    { Foreground = { Color = colors.tab } },
    { Text = wezterm.nerdfonts.pl_left_hard_divider },
  }
end)



return config
