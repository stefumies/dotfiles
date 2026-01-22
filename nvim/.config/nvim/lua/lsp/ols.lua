local caps = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("ols", {
	cmd = { "ols" },
	root_markers = { "ols.json" },
	filetypes = { "odin" },
	capabilities = caps,
})
