vim.lsp.config("ols", {
    cmd = { "ols" },
    root_markers = { "ols.json" },
    filetypes = { "odin" },
    capabilities = caps
})

