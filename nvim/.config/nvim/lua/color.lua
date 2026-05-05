vim.cmd.colorscheme("onedark")

vim.api.nvim_set_hl(0, "NonText", { ctermfg = 81, fg = "#6dceeb" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { link = "NonText" })
