require("mason").setup()

require("mason-lspconfig").setup()

require("mason-tool-installer").setup({
	ensure_installed = {
		"basedpyright",
		"bash-language-server",
		"clangd",
		"clangd",
		"clojure-lsp",
		"docker-compose-language-service",
		"docker-language-server",
		"docker-language-server",
		"fourmolu",
		"gopls",
        "helm-ls",
		"lua_ls",
        "ocamlformat",
		"ols",
		"ruff",
		"rust-analyzer",
		"stylua",
		"taplo",
		"texlab",
		"typescript-language-server",
	},
})
