vim.lsp.config("dartls", {
	cmd = { "dart", "language-server", "--protocol=lsp" },
	root_dir = function(bufnr, _)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		return vim.fs.root(fname, { "pubspec.yaml", ".git" })
	end,
	settings = {
		dart = {
			completeFunctionCalls = true,
			showTodos = true,
			enableSdkFormatter = true,
		},
	},
})
