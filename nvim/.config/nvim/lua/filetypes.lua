vim.filetype.add({
    filename = {
        ["go.work"]     = "gowork",
        ["go.work.sum"] = "gowork",
    },
    pattern = {
        [".*/templates/.*%.ya?ml"] = "helm",
        [".*/values.*%.ya?ml"]     = "yaml.helm-values",
    },
    extension = {
        gotmpl = "gotmpl",
    },
    pattern = {
        [".*/templates/.*%.ya?ml"] = "helm",
        [".*/values.*%.ya?ml"]     = "yaml.helm-values",
    },
})
