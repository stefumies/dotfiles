require("oil").setup({
	default_file_explorer = true,
	columns = {
		"icon",
		-- "permissions",
		-- "size",
		-- "mtime",
	},
	float = {
		padding = 2,
		max_width = 90,
		max_height = 0, -- 0 means it will adapt to the content
		border = "rounded",
		win_options = {
			winblend = 0,
		},
	},
	view_options = {
		show_hidden = true,
		is_hidden_file = function(name, bufnr)
			return vim.startswith(name, ".")
		end,
	},
	lsp_file_methods = {
		enabled = true,
		timeout_ms = 1000,
		autosave_changes = true,
	},
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
