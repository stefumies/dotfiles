vim.cmd("let g:netrw_banner = 0")

vim.opt.guicursor      = ""
vim.opt.nu             = true
vim.opt.relativenumber = true
vim.opt.scrolloff      = 8

vim.opt.tabstop        = 4
vim.opt.softtabstop    = 4
vim.opt.shiftwidth     = 4
vim.opt.expandtab      = true

vim.opt.autoindent     = true
vim.opt.smartindent    = true
vim.opt.wrap           = false

vim.opt.swapfile       = false
vim.opt.backup         = false
vim.opt.undofile       = true

vim.opt.incsearch      = true
vim.opt.inccommand     = "split"
vim.opt.hlsearch       = true
vim.opt.ignorecase     = true
vim.opt.smartcase      = true

vim.opt.termguicolors  = true
vim.opt.background     = "dark"
vim.opt.signcolumn     = "yes"

vim.opt.backspace      = { "start", "eol", "indent" }
vim.opt.splitright     = true
vim.opt.splitbelow     = true

vim.opt.completeopt    = { "menuone", "noselect", "popup" }
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50

vim.opt.clipboard:append("unnamedplus")
vim.opt.mouse = "a"
vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE', ctermbg = 'NONE' })
vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'NONE', ctermbg = 'NONE' })

vim.opt.termsync = false

vim.g.editorconfig = true
vim.g.neovim_tty_synchronized_output = false
