local lspconfig = require 'lspconfig'
local navic = require 'nvim-navic'

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

lspconfig.clangd.setup {
	cmd = {
		'clangd',
		'-header-insertion=never',
		'--background-index',
		'--suggest-missing-includes'
	},
	on_attach = on_attach
}

lspconfig.zls.setup {
	on_attach = on_attach
}
