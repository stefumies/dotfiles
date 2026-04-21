require("dashboard").setup({
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "DepsUpdate", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
			{
				desc = " Apps",
				group = "DiagnosticHint",
				action = "Telescope builtin",
				key = "a",
			},
			{
				desc = " dotfiles",
				group = "Number",
				action = "lua require('oil').open(vim.fn.expand('~/dotfiles'))",
				key = "d",
			},
		},
	},
})
