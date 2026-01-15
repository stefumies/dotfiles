local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.localleader = " "


-- Basics --
vim.keymap.set("n", "<leader>ss", "<cmd>:source %<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>:write!<CR>")

-- Move whole lines up and down --
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv",{ desc = "moves lines up in visual mode"})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv",{ desc = "moves lines down in visual mode"})

-- Better Join line keeps the cursor in place--
vim.keymap.set("n", "J","mzJ`z")

-- Half page scrolling --
vim.keymap.set("n", "<C-d>", "<C-d>zz",{ desc = "moves lines down in buffer with cursor centered"})
vim.keymap.set("n", "<C-u>", "<C-u>zz",{ desc = "moves lines up in buffer with cursor centered"})

-- Search jumps --
vim.keymap.set("n", "n","nzzzv")
vim.keymap.set("n", "N","Nzzzv")

-- Indentation in Visual Mode --
vim.keymap.set("v", "<","<gv", opts)
vim.keymap.set("v", ">",">gv", opts)

-- Paste without replacing the clipboard content --
vim.keymap.set("x","<leader>p", [["_dP]])

-- Pasting in visual mode without replacing the clipboard content --
vim.keymap.set("v","p", '"_dp',opts)

-- Delete without copy! --
vim.keymap.set({"n","v"},"<leader>d", [["_d]])

-- Clear search highglights"
vim.keymap.set("n","<C-c>", ":nohl<CR>", { desc = "clear highlights", silent=true})

-- LSP format buffer --
vim.keymap.set("n","<leader>ff", vim.lsp.buf.format)

-- disable capital Q --
vim.keymap.set("n","Q","<nop>")

-- Use X do delete a char without copy --
vim.keymap.set("n", "x", '"_x',opts)

-- Global replace word under cursor for the whole file --
vim.keymap.set("n","<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left>]],
    { desc = "Replace word under cursor globally" })

-- Make an script executeable and run it inside neovim --
vim.keymap.set("n","<leader>xx","<cmd>!chmod +x %<CR>", { desc = "Makes a script executeable", silent = true})

-- If we want tabs --
vim.keymap.set("n","<leader>to", "<cmd>tabnew<CR>")
vim.keymap.set("n","<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n","<leader>tn", "<cmd>tabn<CR>")
vim.keymap.set("n","<leader>tp", "<cmd>tabp<CR>")
-- opens current tab in a new tab --
vim.keymap.set("n","<leader>tf", "<cmd>tabnew %<CR>")

-- Window splitting -- 
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Mini pick --
vim.keymap.set("n", "<leader>f", ":Pick files<CR>")
vim.keymap.set("n", "<leader>h", ":Pick help<CR>")

-- Oil --
vim.keymap.set("n","<leader>e", ":Oil<CR>")

-- Float term ---
vim.keymap.set("n","<leader>tt", ":FloatermToggle<CR>")
vim.keymap.set("n","<leader>tk", ":FloatermKill<CR>")
vim.keymap.set("n","<leader>th", ":FloatermHide<CR>")
vim.keymap.set("n","<leader>tn", ":FloatermNew<CR>")

vim.keymap.set("n","<leader>o", ":TransparentToggle<CR>")



-- Copy filepath to the clipboard --
vim.keymap.set("n", "<leader>fp", function()
    local filePath = vim.fn.expand("%:~") -- filepath relative to home
    vim.fn.setreg("+",filePath) -- copies to current register
    print("Filepath copied to clipboard: " .. filePath)
end, { desc = "Copy filepath to the clipboard"})
