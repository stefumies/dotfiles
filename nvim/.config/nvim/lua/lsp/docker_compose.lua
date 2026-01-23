vim.lsp.config("docker_compose", {
	cmd = { "docker-compose-language-service", "--stdio" },
	filetypes = {
		"yaml.docker-compose",
		"docker-compose",
		"dockercompose",
	},
	root_markers = {
		"docker-compose.yml",
		"docker-compose.yaml",
		"compose.yml",
		"compose.yaml",
	},
})
