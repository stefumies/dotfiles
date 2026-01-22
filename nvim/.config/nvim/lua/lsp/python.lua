local caps = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config("python", {
    cmd = { 'pyright-langserver', '--stdio' },
    root_markers = { '.git', 'requirements.txt' },
    capabilities = caps,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
                diagnosticSeverityOverrides = {
                    reportMissingParameterType = "none",
                    reportMissingTypeArgument = "none",
                    reportUnknownParameterType = "none",
                    reportUnknownArgumentType = "none",
                    reportUnknownLambdaType = "none",
                    reportUnknownVariableType = "none",
                    reportUnknownMemberType = "none",
                    reportMissingModuleSource = "none",
                },
            },
        },
    },
})

