local lspconfig = require 'lspconfig'

lspconfig.clangd.setup {
	cmd = { 'clangd', '-header-insertion=never' },
}

lspconfig.pylsp.setup {}

lspconfig.rust_analyzer.setup {}

lspconfig.ols.setup {}

lspconfig.zls.setup {}
