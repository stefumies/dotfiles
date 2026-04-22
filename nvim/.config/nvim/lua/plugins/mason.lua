require("mason").setup()

require("mason-lspconfig").setup()

require("mason-tool-installer").setup({
	ensure_installed = {
		"astro-language-server",
		"basedpyright",
		"bash-language-server",
		"clangd",
		"clojure-lsp",
		"docker-compose-language-service",
		"docker-language-server",
		"fourmolu",
		"gopls",
        "helm-ls",
		"html-lsp",
		"lua_ls",
        "marksman",
        "ocamlformat",
		"prettier",
		"ols",
		"ruff",
		"rust-analyzer",
		"stylua",
		"taplo",
		"texlab",
		"typescript-language-server",
	},
})
