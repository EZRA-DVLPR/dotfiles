return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {},
	config = function()
		require("todo-comments").setup({
			highlight = {
				-- multiline = false, -- uncomment the first part of this line in order to get rid of multi-line highlights
			},
			keywords = {
				--just changing the colors to be how i like em
				FIX = {color = "#BC4646"},
				TODO = {color = "#629064"},
				PERF = {color = "#966EAF"},
				WARN = {color = "#F0E26C"},
				HACK = {color = "#D89660"},
				NOTE = {color = "info"},
				TEST = {},
			},
		})
	end
}
-- TODO:
-- TODO:
--
-- HACK:
-- HACK:
--
-- WARN:
-- WARN:
--
-- PERF:
-- PERF:
--
-- NOTE:
-- NOTE:
--
-- alt: INFO
--
-- BUG:
-- BUG:
--
--alt: FIX
--
-- TEST:
-- TEST:
