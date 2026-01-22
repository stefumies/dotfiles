require("lsp.luals")
require("lsp.bash")
require("lsp.docker_compose")
require("lsp.gopls")
require("lsp.ols")
require("lsp.python")
require("lsp.helm_ls")
require("lsp.ruff")
require("lsp.rust-analyzer")
require("lsp.stylua")
require("lsp.textlab")
require("lsp.ts_ls")
require("lsp.yaml")

vim.lsp.enable({
    "bashls",
    "gopls",
    "lua_ls",
    "stylua",
    "texlab",
    "ts_ls",
    "rust-analyzer",
    "helm_ls",
    "docker_compose",
    "yaml",
    "ols",
    "python",
    "ruff",
})

vim.diagnostic.config({ virtual_text = true })
