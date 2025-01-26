return {
	{
		"williamboman/mason.nvim",
		opts = {
		},
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
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
				}
			})
			vim.diagnostic.config({update_in_insert = true}) --keep the LSP messages while in insert mode
		end
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
		},
		config = function()
			local lspconfig = require("lspconfig")
		
			--setup all the lsps
			lspconfig.biome.setup({
cmd = { "biome", "lsp-proxy" }, 
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    root_dir = require("lspconfig.util").root_pattern("package.json", "biome.json", ".git"),
    on_attach = function(client, bufnr)
        print("biome attached to buffer " .. bufnr)
    end,
			})
			lspconfig.clangd.setup({})
			lspconfig.gopls.setup({})
			lspconfig.jdtls.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.taplo.setup({})
		end
	},
	{
		"j-hui/fidget.nvim",
		opts = {},
		config = function()
			require("fidget").setup({
				notification = {
					window = {
						winblend = 0
					}
				},
			})
		end
	},
}
