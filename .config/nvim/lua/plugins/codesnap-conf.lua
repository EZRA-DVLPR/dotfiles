return {
	"mistricky/codesnap.nvim",
	build = "make",
	opts = {
		save_path = "~/Pictures/Code",
		has_breadcrumbs = true,
		has_line_number = true,
		bg_theme = "sea",
		mac_window_bar = false,
		code_font_family = "Maple Mono",
	}
	-- test for whether Maple Mono is being used in the snapshot
	-- $$##@@
}
