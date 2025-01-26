return {
	"norcalli/nvim-colorizer.lua",
	opts = {
		RRGGBBAA = true,
	},
	config = function()
		require("colorizer").setup({})
	end
}
