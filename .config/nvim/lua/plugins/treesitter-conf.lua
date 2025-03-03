return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"typescript",
				"go",
				"html",
				"css",
				"bash",
				"gitignore",
				"go",
				"json",
				"markdown",
				"python",
				"sql",
				"yaml",
				"c_sharp",
				"cpp",
				"csv",
				"dockerfile",
				"elixir",
				"haskell",
				"java",
				"latex",
				"matlab",
				"prolog",
				"r",
				"regex",
				"rust",
				"scala",
				"tmux",
				"xml",
			},
			sync_install = false, -- want async installation for parsers
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
