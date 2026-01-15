vim.pack.add({
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/rose-pine/neovim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/mcauley-penney/techbase.nvim" },
    { src = "https://github.com/voldikss/vim-floaterm" },
    { src = "https://github.com/numToStr/Comment.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/towolf/vim-helm" },
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://github.com/xiyaowong/transparent.nvim" },
    { src = "https://github.com/folke/lsp-colors.nvim" },
    { src = "https://github.com/ellisonleao/gruvbox.nvim" }
})

vim.cmd("colorscheme gruvbox")

require "oil".setup()
require "mini.pick".setup()
require "lualine".setup({
    theme = { "gruvbox "}
})
require "nvim-autopairs".setup()
require "Comment".setup()
require "mason".setup()
require 'gitsigns'.setup({ signcolumn = false })
require 'lualine'.setup()
require 'lsp-colors'.setup()

require "nvim-treesitter".setup({
    install_dir = vim.fn.stdpath('data') .. '/site'
})

require "nvim-treesitter".install({
    "rust",
    "bash",
    "typescript",
    "javascript",
    "odin",
    "markdown",
    "lua",
    "c",
    "toml",
    "yaml"
})
