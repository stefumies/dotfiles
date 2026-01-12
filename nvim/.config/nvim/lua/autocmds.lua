-- Higlight yank --
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Lsp --
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            -- Optional: trigger autocompletion on EVERY keypress. May be slow!
            local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
            client.server_capabilities.completionProvider.triggerCharacters = chars
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
        vim.keymap.set('n', '<C-c>', '<cmd>bd<CR>', bs) -- Close the current Netrw buffer
        vim.keymap.set('n', '<Tab>', 'mf', bsr)         -- Mark the file/directory to the mark list
        vim.keymap.set('n', '<S-Tab>', 'mF', bsr)       -- Unmark all the files/directories
        -- Improved file creation
        vim.keymap.set('n', '%', function()
            local dir = vim.b.netrw_curdir or vim.fn.expand('%:p:h')
            vim.ui.input({ prompt = 'Enter filename: ' }, function(input)
                if input and input ~= '' then
                    local filepath = dir .. '/' .. input
                    vim.cmd('!touch ' .. vim.fn.shellescape(filepath))
                    vim.api.nvim_feedkeys('<C-l>', 'n', false)
                end
            end)
        end, { buffer = true, silent = true })
    end
})
