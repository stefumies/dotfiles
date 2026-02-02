local package_path = vim.fn.stdpath("data") .. "/site"

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
    "clojure",
    "dart"
})
