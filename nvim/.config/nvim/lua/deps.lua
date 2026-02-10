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
	{ src = "https://github.com/christoomey/vim-tmux-navigator", name = "vim-tmux-navigator" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/tombi-toml/tombi" },
	{ src = "https://github.com/mrcjkb/haskell-tools.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/TamaMcGlinn/nvim-lspconfig-ada" },
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/Olical/conjure" },
	{ src = "https://github.com/nvimdev/dashboard-nvim" },
	{ src = "https://github.com/folke/trouble.nvim" },
	{ src = "https://github.com/numToStr/FTerm.nvim" },
	{ src = "https://github.com/neanias/everforest-nvim" },
	{ src = "https://github.com/stevearc/aerial.nvim" },
	{ src = "https://github.com/j-hui/fidget.nvim" },
	{ src = "https://github.com/vimpostor/vim-tpipeline" },
	{ src = "https://github.com/abecodes/tabout.nvim" },
	{ src = "https://github.com/Wansmer/treesj" },
	{ src = "https://github.com/Mofiqul/vscode.nvim" },
})

vim.lsp.enable({
	"basedpyright",
	"bashls",
	"clojure_lsp",
	"dartls",
	"docker_compose_language_service",
	"gopls",
	"helm_ls",
	"hls",
	"lua_ls",
	"ocamllsp",
	"ols",
	"ruff",
	"rust_analyzer",
	"stylua",
	"taplo",
	"texlab",
	"ts_ls",
	"yaml",
})

vim.diagnostic.config({ virtual_text = true })
