vim.pack.add({
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/voldikss/vim-floaterm" },
    { src = "https://github.com/numToStr/Comment.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/towolf/vim-helm" },
    { src = "https://github.com/xiyaowong/transparent.nvim" },
    { src = "https://github.com/folke/lsp-colors.nvim" },
    { src = "https://github.com/stevearc/conform.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/folke/tokyonight.nvim" }
})

vim.cmd("colorscheme tokyonight-moon")

require "oil".setup()
require "mini.pick".setup()
require "nvim-autopairs".setup()
require "Comment".setup()
require "mason".setup()
require "mason-lspconfig".setup()

require "mason-tool-installer".setup({
    "lua_ls",
    "stylua",
    "basedpyright",
    "ols",
    "clangd",
    "rust-analyzer",
})

require 'gitsigns'.setup({ signcolumn = false })
require 'lualine'.setup({
    theme = "tokyonight"
})
require 'lsp-colors'.setup()

local cmp = require('cmp')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Force Tab to accept
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args) vim.snippet.expand(args.body) end,
    },
    sources = {
        { name = 'nvim_lsp' },
    },
})

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
    "yaml",
    "python"
})

require "conform".setup({
    notify_on_error = false,
    -- Odinfmt gets its configuration from odinfmt.json. It defaults
    -- writing to stdout but needs to be told to read from stdin.
    formatters = {
        odinfmt = {
            -- Change where to find the command if it isn't in your path.
            command = "odinfmt",
            args = { "-stdin" },
            stdin = true,
        },
    },
    -- and instruct conform to use odinfmt.
    formatters_by_ft = {
        odin = { "odinfmt" },
    },
})
