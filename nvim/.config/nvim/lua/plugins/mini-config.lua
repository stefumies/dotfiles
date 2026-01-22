require("mini.pick").setup()
require("mini.surround").setup()
require("mini.cursorword").setup() -- Underlines word under cursor
require("mini.indentscope").setup()

require("mini.pairs").setup() -- Autopairs (replaces nvim-autopairs if you want)
require("mini.comment").setup() -- Commenting (replaces Comment.nvim if you want)
require("mini.align").setup()

require("mini.ai").setup({ n_lines = 500 }) -- Better text obects (around/inside)

require("mini.statusline").setup({
	use_icons = true,
	set_vim_settings = true,
})
