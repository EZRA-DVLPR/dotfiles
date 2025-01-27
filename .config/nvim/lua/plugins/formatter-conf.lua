return {
	--installs formatters with Mason
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"stylua",
					"isort",
					"black",
					"rustfmt",
					"clang-format",
					"gofumpt",
				},
			})
		end,
	},
	--tells what formatter(s) to use for what language
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					rust = { "rustfmt" },
					javascript = { "biome" },
					typescript = { "biome" },
					c = { "clang-format" },
					cpp = { "clang-format" },
					csh = { "clang-format" },
					go = { "gofumpt" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
}
