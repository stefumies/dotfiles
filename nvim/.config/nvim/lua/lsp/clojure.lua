vim.lsp.config("clojure_lsp", {
	cmd = { "clojure-lsp" },
	filetypes = { "clojure", "clojurescript", "clojurec" },
	root_markers = { "deps.edn", "project.clj", "bb.edn", "shadow-cljs.edn", ".git" },
})
