local function run_shell_in_float()
	vim.ui.input({ prompt = "Run > " }, function(input)
		if not input or input == "" then
			return
		end

		-- create a floating window to run the command
		local width = math.floor(vim.o.columns * 0.8)
		local height = math.floor(vim.o.lines * 0.8)

		local buf = vim.api.nvim_create_buf(false, true)
		local win = vim.api.nvim_open_win(buf, true, {
			relative = "editor",
			width = width,
			height = height,
			col = math.floor((vim.o.columns - width) / 2),
			row = math.floor((vim.o.lines - height) / 2),
			style = "minimal",
			border = "rounded",
		})

		vim.fn.termopen(input)
		vim.cmd("startinsert")
	end)
end

vim.keymap.set("n", "<leader>rr", run_shell_in_float, { desc = "Run Shell Command (Native)" })
