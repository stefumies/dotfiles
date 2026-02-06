local aerial = require("aerial")

aerial.setup({
	backends = { "lsp", "treesitter" },
	layout = {
		min_width = 28,
		default_direction = "right",
		placement = "window",
	},

	on_attach = function(bufnr)
		vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
		vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
	end,
})

vim.keymap.set("n", "<leader>o", function()
	if aerial.is_open() then
		aerial.close()
	else
		aerial.toggle({ focus = true, direction = "right" })
		aerial.open_all()
	end
end, { desc = "Outline: Focus & Expand All" })
