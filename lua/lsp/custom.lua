local lspconfig = require 'lspconfig'

lspconfig.clangd.setup {
	cmd = {
		'clangd',
		'-header-insertion=never',
		'--background-index',
		'--suggest-missing-includes'
	},
}

lspconfig.pylsp.setup {}

lspconfig.rust_analyzer.setup {}

lspconfig.ocamllsp.setup {}

lspconfig.ols.setup {}

lspconfig.vls.setup {
	cmd = {
		"v-analyzer"
	}
}

lspconfig.zls.setup {}
