return {
	--the core for downloading stuff
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
		config = function()
			require("mason").setup()
		end,
	},
	--handles downloading all LSPs
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"biome",
					"clangd",
					"gopls",
					"jdtls",
					"lua_ls",
					"pyright",
					"rust_analyzer",
					"taplo",
					"ltex",
				},
			})
			vim.diagnostic.config({ update_in_insert = true }) --keep the LSP messages while in insert mode
		end,
	},
	--tell the LSPs how and when to attach
	{
		"neovim/nvim-lspconfig",
		opts = {},
		config = function()
			local lspconfig = require("lspconfig")

			--setup all the lsps
			lspconfig.biome.setup({
				cmd = { "biome", "lsp-proxy" },
				filetypes = { "javascript", "javascriptreact" },
				root_dir = require("lspconfig.util").root_pattern("package.json", "biome.json", ".git"),
				on_attach = function(client, bufnr) end,
			})
			lspconfig.clangd.setup({})
			lspconfig.gopls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.taplo.setup({})
			lspconfig.ltex.setup({})
		end,
	},
	--mini display for some LSPs to log process during startup/working process
	{
		"j-hui/fidget.nvim",
		opts = {},
		config = function()
			require("fidget").setup({
				--used for making catppuccin look nice
				notification = {
					window = {
						winblend = 0,
					},
				},
			})
		end,
	},
}
