local fterm = require("FTerm")

fterm.setup({
	border = "rounded",
	dimenssions = {
		height = 0.8,
		width = 0.8,
	},
})

vim.keymap.set({ "n", "t" }, "<leader>tt", fterm.toggle, { desc = "Toggle Floating Terminal" })
