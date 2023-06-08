local lspconfig = require 'lspconfig'

lspconfig.clangd.setup {
	cmd = { 'clangd', '-header-insertion=never' },
}

lspconfig.pylsp.setup {}

lspconfig.rust_analyzer.setup {}

lspconfig.zls.setup {}
