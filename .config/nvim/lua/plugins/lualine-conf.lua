return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function() 
		require("lualine").setup({
			options = {
				-- theme = "catppuccin-moccha",
				theme = "dracula",
			},
			sections = {
					lualine_a = {'mode', 'progress', 'searchcount', 'selectioncount'},
					lualine_b = {'branch', 'diff', 'diagnostics'},
					lualine_c = {'filename', 'filesize'},
					
					lualine_x = {'encoding', 'fileformat' },
					lualine_y = {'filetype'},
					lualine_z = {'location'} 
			}
		})
	end
}
