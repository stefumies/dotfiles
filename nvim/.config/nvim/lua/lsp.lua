vim.lsp.config.bashls = {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'bash', 'sh' }
}

vim.lsp.config('gopls', {})
vim.lsp.config('helm_ls', {})
vim.lsp.config('rust-analyzer', {})
vim.lsp.config('texlab', {})
vim.lsp.config('ts_ls', {})

vim.filetype.add({
    extension = {
        ["dockercompose"] = "dockercompose",
        ["docker-compose"] = "docker-compose",
    },
    pattern = {
        ["docker%-compose%.ya?ml"] = "yaml.docker-compose",
        ["compose%.ya?ml"] = "yaml.docker-compose",
    },
})

vim.lsp.config('docker_compose', {
    cmd = { 'docker-compose-langserver', '--stdio' },
    filetypes = {
        'yaml.docker-compose',
        'docker-compose',
        'dockercompose',
    },
    root_markers = {
        'docker-compose.yml',
        'docker-compose.yaml',
        'compose.yml',
        'compose.yaml'
    },
})


vim.lsp.config.lua_ls = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = {
        '.luarc.json',
        '.luarc.jsonc',
        '.luacheckrc',
        '.stylua.toml',
        'stylua.toml',
        'selene.toml',
        'selene.yml',
        '.git',
    },
    settings = {
        Lua = {
            runtime = {
                version = "Lua 5.4",
            },
            completion = {
                enable = true,
            },
            diagnostics = {
                enable = true,
                globals = { "vim" },
            },
            workspace = {
                library = { vim.env.VIMRUNTIME },
                checkThirdParty = false,
            },
        },
    },
}

vim.lsp.enable({
    "bashls",
    "gopls",
    "lua_ls",
    "texlab",
    "ts_ls",
    "rust-analyzer",
    "helm_ls",
    "docker_compose",
    "yaml"
})

vim.diagnostic.config({ virtual_text = true })
