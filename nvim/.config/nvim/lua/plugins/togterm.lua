require("toggleterm").setup({})

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>ToggleTermSendCurrentLine<CR>")
vim.keymap.set("n", "<leader>tvl", "<cmd>ToggleTermSendVisualLines<CR>")
vim.keymap.set("n", "<leader>tvs", "<cmd>ToggleTermSendVisualSelection<CR>")
