vim.lsp.config("hls", {
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    root_markers = { "stack.yaml", "cabal.project", "package.yaml", "hie.yaml", ".git",".hs" },
    settings = {
        haskell = {
            formattingProvider = "fourmolu",
        },
    },
})

