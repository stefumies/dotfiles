local caps = vim.tbl_deep_extend(
	"force",
	require("cmp_nvim_lsp").default_capabilities(),
	{ positionEncodings = { "utf-16" } }
)

vim.lsp.config("basedpyright", {
	cmd = { "basedpyright-langserver", "--stdio" },
	root_markers = {
		"pyproject.toml",
		"pyrightconfig.json",
		"setup.cfg",
		"setup.py",
		"requirements.txt",
		".git",
	},
	capabilities = caps,
	single_file_support = true,
})
