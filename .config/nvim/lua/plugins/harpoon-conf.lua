return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {"nvim-lua/plenary.nvim"},
	opts = {},
	config = function()
		require("harpoon").setup({})
	end
}
