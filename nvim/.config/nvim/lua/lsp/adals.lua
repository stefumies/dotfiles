vim.lsp.config("als", {
	filetypes = { "ada", "adb", "ads" },
	cmd = { "ada_language_server" },
	root_markers = { "gpr", "alire.toml" },
})
