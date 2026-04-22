vim.filetype.add({
	filename = {
		["go.work"] = "gowork",
		["go.work.sum"] = "gowork",
		["docker-compose.yml"] = "yaml.docker-compose",
		["docker-compose.yaml"] = "yaml.docker-compose",
		["compose.yml"] = "yaml.docker-compose",
		["compose.yaml"] = "yaml.docker-compose",
	},
	extension = {
		gotmpl = "gotmpl",
		astro = "astro",
	},
	pattern = {
		[".*/templates/.*%.ya?ml"] = "helm",
		[".*/values.*%.ya?ml"] = "yaml.helm-values",
	},
})
