vim.lsp.config("clangd", {
    enabled = true,
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = { ".clangd", ".clang-tidy", "compile_commands.json", "compile_flags.txt", ".git" },
})

