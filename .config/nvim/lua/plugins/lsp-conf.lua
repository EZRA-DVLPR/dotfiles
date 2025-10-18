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
			vim.lsp.config("biome", {
				settings = {
					["biome"] = {
						cmd = { "biome", "lsp-proxy" },
						filetypes = { "javascript", "javascriptreact" },
						root_dir = require("lspconfig.util").root_pattern("package.json", "biome.json", ".git"),
						on_attach = function(client, bufnr) end,
					},
				},
			})
			vim.lsp.enable("clangd")
			vim.lsp.config.gopls = {
				name = "gopls",
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				root_dir = vim.fs.dirname(vim.fs.find({ "go.work", "go.mod" }, { upward = true })[1]),
				settings = {},
			}
			vim.lsp.enable("jdtls")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("pyright")
			vim.lsp.enable("rust_analyzer")
			vim.lsp.enable("stylua")
			vim.lsp.enable("taplo")
			vim.lsp.enable("ltex")
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
