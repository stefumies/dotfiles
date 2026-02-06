vim.lsp.config("ocamllsp", {
	cmd = { "ocamllsp"},
	filetypes = { "ocaml", "ocaml.interface", "ocaml.ocamllex", "ocaml.menhir", "dune" },
	root_markers = { "dune-project", "package.json", "opam", ".git" },
	settings = {
		codelens = { enable = true },
        ocaml = {
            format_enable = true
        }
	},
})
