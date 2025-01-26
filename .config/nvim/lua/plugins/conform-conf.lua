return {
    "stevearc/conform.nvim",
	event = {"BufReadPre", "BufNewFile", "BufWritePre"},





    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            rust = { "rustfmt" },
            javascript = { "biome" },
            typescript = { "biome" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
	config = function()
		require("conform").setup(opts)
	end
}
