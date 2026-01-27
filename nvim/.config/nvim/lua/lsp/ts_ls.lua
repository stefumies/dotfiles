vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript" },
	root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
})
