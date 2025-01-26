return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	tag = '0.1.8',
	opts = {},
	config = function()
		require("telescope").setup({

		})
	end
}
