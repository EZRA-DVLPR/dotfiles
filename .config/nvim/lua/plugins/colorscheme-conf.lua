return {
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				integrations = {
					treesitter = true,
					fidget = true,
					harpoon = true,
					mason = true,
					nvimtree = true,
					which_key = true,
				}
			})
		end
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
	},
	--use Themery to switch between themes
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = {
					{
						name = "Catppuccin - Moccha",
						colorscheme = "catppuccin-mocha"
					},
					{
						name = "Catppuccin - Macchiato",
						colorscheme = "catppuccin-macchiato"
					},
					{
						name = "TokyoNight - Moon",
						colorscheme = "tokyonight-moon"
					},
					{
						name = "TokyoNight - Night",
						colorscheme = "tokyonight-night"
					},
					{
						name = "Kanagawa - Dragon",
						colorscheme = "kanagawa-dragon"
					},
					{
						name = "Kanagawa - Wave",
						colorscheme = "kanagawa-wave"
					}
				}
			})
		end
	}
}
