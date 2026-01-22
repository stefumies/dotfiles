vim.lsp.config('docker_compose', {
    cmd = { 'docker-compose-langserver', '--stdio' },
    filetypes = {
        'yaml.docker-compose',
        'docker-compose',
        'dockercompose',
    },
    root_markers = {
        'docker-compose.yml',
        'docker-compose.yaml',
        'compose.yml',
        'compose.yaml'
    },
})

