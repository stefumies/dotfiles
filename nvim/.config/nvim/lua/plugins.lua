local package_path = vim.fn.stdpath("data") .. "/site"
local mini_path = package_path .. "pack/deps/opt/mini.nvim"

-- If mini.nvim isn't on the path, add it manually
if not vim.loop.fs_stat(mini_path) then
	print("Installing mini.nvim...")
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/echasnovski/mini.nvim",
		mini_path,
	})
end

vim.opt.runtimepath:prepend(mini_path)

require("mini.deps").setup({
	path = { package = package_path },
})

vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/voldikss/vim-floaterm" },
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
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/christoomey/vim-tmux-navigator", name = "vim-tmux-navigator" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

vim.cmd("colorscheme tokyonight-moon")

require("oil").setup({
	default_file_explorer = true,
	colums = {
		"icon",
		"permissions",
		"size",
		"mtime",
	},
	window_options = {
		wrap = false,
		signcolumn = "yes",
		cursorcolumn = false,
		conceallevel = 3,
	},
	view_options = {
		show_hidden = true,
	},
})
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-tool-installer").setup({
	ensure_installed = { "lua_ls", "stylua", "basedpyright", "ols", "clangd", "rust-analyzer" },
})

require("gitsigns").setup({ signcolumn = false })
require("lsp-colors").setup()

local cmp = require("cmp")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Force Tab to accept
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
	},
})

require("nvim-treesitter").setup({
	install_dir = package_path,
})

require("nvim-treesitter").install({
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
	"python",
})

require("conform").setup({
	notify_on_error = false,
	-- Odinfmt gets its configuration from odinfmt.son. It defaults
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

