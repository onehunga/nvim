local lspconfig = require 'lspconfig'

lspconfig.clangd.setup {
	cmd = { 'clangd', '-header-insertion=never' },
}
