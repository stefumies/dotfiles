require "toggleterm".setup({})

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm toggle<CR>")
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTermSendVisualLines<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>ToggleTermSendCurrentLine<CR>")
vim.keymap.set("n", "<leader>ts", "<cmd>ToggleTermSendVisualSelection<CR>")

