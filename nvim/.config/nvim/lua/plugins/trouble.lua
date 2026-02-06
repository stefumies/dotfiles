require("trouble").setup({
	icon = true,
	mode = "diagnostics",
	indent_lines = true,
	auto_open = false,
	auto_close = false,
	group = true,
	padding = true,
	action_keys = {
		close = "q",
		cancel = "<esc>",
		refresh = "r",
		jump = { "<cr>", "tab" },
		open_split = { "<c-x>" },
		open_vsplit = { "<c-v>" },
		toggle_mode = "m",
		toggle_preview = "P",
		hover = "K",
		preview = "p",
		close_folds = { "zM", "zc" },
		open_folds = { "zR", "zo" },
		toggle_fold = { "zA", "za" },
		previous = "k",
		next = "j",
	},
})

-- Some keymaps for nordic keyboard easiness --

vim.keymap.set(
	"n",
	"<leader>xx",
	"<cmd>Trouble diagnostics toggle<cr>",
	{ silent = true, noremap = true, desc = "Toggle diagnostics (Trouble)" }
)

-- vim.keymap.set("n", "<leader>tn", function()
-- 	require("trouble").next({ skip_groups = true, jump = true })
-- end)
--
-- vim.keymap.set("n", "<leader>tp", function()
--   require("trouble").previous({skip_groups = true, jump = true})
-- end)

vim.keymap.set("n", "ö", function() require("trouble").next({jump = true}) end)
vim.keymap.set("n", "ä", function() require("trouble").previous({jump = true}) end)
