require("mason").setup()

require("mason-lspconfig").setup()

require("mason-tool-installer").setup({
    ensure_installed = {
        "lua_ls",
        "stylua",
        "basedpyright",
        "ruff",
        "ols",
        "clangd",
        "rust-analyzer",
        "bash-language-server",
        "docker-language-server",
        "gopls"
    },
})
