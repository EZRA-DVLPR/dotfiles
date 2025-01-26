local harpoon = require("harpoon")

return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{
			"<leader>7",
			"<cmd>CloakToggle<cr>",
			desc = "Toggle Cloak"
		},
		{
			"<leader>ll",
			"<cmd>NvimTreeToggle<cr>",
			desc = "Toggle Nvim Tree"
		},
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Find Files with Telescope"
		},
		{
			"<leader>fb",
			"<cmd>Telescope buffers<cr>",
			desc = "Buffers with Telescope"
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<cr>",
			desc = "Grep with Telescope"
		},
		{
			"<leader>fh",
			"<cmd>Telescope help_tags<cr>",
			desc = "Help Tags with Telescope"
		},
		{
			"<leader>ft",
			"<cmd>TodoTelescope<cr>",
			desc = "Show ToDo List with Telescope"
		},
		{
			"<leader>a",
			function()
				harpoon:list():add()
			end,
			desc = "Add to Harpoon"
		},
		{
			"<leader>h",
			function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "Toggle Harpoon"
		},
		{
			"<leader>r",
			function()
				harpoon:list():remove()
			end,
			desc = "Remove from Harpoon"
		},
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)"
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
		  "<leader>cs",
		  "<cmd>Trouble symbols toggle focus=false<cr>",
		  desc = "Symbols (Trouble)",
		},
		{
		  "<leader>cl",
		  "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
		  desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
		  "<leader>xL",
		  "<cmd>Trouble loclist toggle<cr>",
		  desc = "Location List (Trouble)",
		},
		{
		  "<leader>xQ",
		  "<cmd>Trouble qflist toggle<cr>",
		  desc = "Quickfix List (Trouble)",
		},
		-- {
		--
		-- },
		-- {
		--
		-- },
		-- {
		--
		-- },
		-- {
		--
		-- },
	}
}
