vim.lsp.config("tombi", {
	cmd = { "tombi" },
	filetypes = { "toml" },
	root_markers = { "tombi.toml", "myproject.toml", "toml", ".git" },
})
