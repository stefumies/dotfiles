vim.lsp.config("ruff", {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	capabilities = { positionEncodings = { "utf-16" } },
	single_file_support = true,
	root_markers = {
		"pyproject.toml",
		"ruff.toml",
		".ruff.toml",
		"setup.cfg",
		"setup.py",
		"requirements.txt",
		".git",
	},
})
