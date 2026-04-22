-- Higlight yank --
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Lsp --
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if not client then
			return
		end
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

--Show diagnostic details automatically on hover
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end,
})

-- tpipeline: initialise after the UI is attached. vim.pack.add sources the
-- plugin before the UI is ready, so its own VimEnter-style guard bails out.
vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("my.tpipeline", { clear = true }),
	callback = function()
		if vim.env.TMUX and vim.env.TMUX ~= "" then
			pcall(vim.fn["tpipeline#initialize"])
		end
	end,
})
