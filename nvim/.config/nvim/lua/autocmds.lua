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

-- ~/.config/nvim-new/lua/autocmds.lua
vim.api.nvim_create_autocmd("FileType", {
	pattern = "netrw",
	callback = function()
		local bs = { buffer = true, silent = true }
		local bsr = { buffer = true, remap = true, silent = true }
		vim.keymap.set("n", "<C-c>", "<cmd>bd<CR>", bs) -- Close the current Netrw buffer
		vim.keymap.set("n", "<Tab>", "mf", bsr) -- Mark the file/directory to the mark list
		vim.keymap.set("n", "<S-Tab>", "mF", bsr) -- Unmark all the files/directories
		-- Improved file creation
		vim.keymap.set("n", "%", function()
			local dir = vim.b.netrw_curdir or vim.fn.expand("%:p:h")
			vim.ui.input({ prompt = "Enter filename: " }, function(input)
				if input and input ~= "" then
					local filepath = dir .. "/" .. input
					vim.cmd("!touch " .. vim.fn.shellescape(filepath))
					vim.api.nvim_feedkeys("<C-l>", "n", false)
				end
			end)
		end, { buffer = true, silent = true })
	end,
})

--Show diagnostic details automatically on hover
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end,
})

-- Sync theme based on system --
-- 2. Live update: Re-runs the function whenever you focus the window
local theme_grp = vim.api.nvim_create_augroup("ThemeSync", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained" }, {
	group = theme_grp,
	callback = function()
		require("colors").sync_system_theme()
	end,
})
