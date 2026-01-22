require("oil").setup({
	default_file_explorer = true,
	colums = {
		"icon",
		"permissions",
		"size",
		"mtime",
	},
	window_options = {
		wrap = false,
		signcolumn = "yes",
		cursorcolumn = false,
		conceallevel = 3,
	},
	view_options = {
		show_hidden = true,
	},
})
