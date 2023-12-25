local lspconfig = require 'lspconfig'

lspconfig.clangd.setup {
	cmd = {
		'clangd',
		'-header-insertion=never',
		'--background-index',
		'--suggest-missing-includes'
	},
}

lspconfig.zls.setup {}
