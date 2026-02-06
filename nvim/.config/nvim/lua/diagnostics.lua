vim.diagnostic.config({
	virtual_text = {
		spacing = 4,
		prefix = "●",
	},
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = true,
		header = "",
		prefix = "",
	},
	severity_sort = true, -- Shows Errors before Warnings
	update_in_insert = false, -- Critical for performance: don't calculate while typing
})
