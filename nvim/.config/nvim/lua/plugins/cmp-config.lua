local cmp = require("cmp")

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Force Tab to accept
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			vim.snippet.expand(args.body)
		end,
	},
	sources = {
		{ name = "nvim_lsp" },
	},
})
