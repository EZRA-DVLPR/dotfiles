return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = {
			sections = {
				{ section = "header" },
				{ section = "startup", padding = 1 },
				{ section = "keys", gap = 1, padding = 1 },
				{
					section = "terminal",
					cmd = "krabby random --no-title; sleep .1",
					random = "1010",
					--there are currently 1010 pkmn from krabby
					--src: https://github.com/yannjor/krabby/blob/main/assets/pokemon.json
					pane = 2,
					indent = 4,
					height = 22,
				},
			},
		},
		indent = { enabled = true },
		bigfile = { enabled = true },
	},
}
