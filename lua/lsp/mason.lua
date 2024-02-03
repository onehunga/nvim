local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'
local navic = require 'nvim-navic'

mason.setup {}
mason_lspconfig.setup {}

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

mason_lspconfig.setup_handlers {
	function(server_name)
		local opts = {
			on_attach = on_attach
		}

		if server_name == 'lua_ls' then
			opts = require 'lsp.configs.lua'
		end

		require('lspconfig')[server_name].setup(opts)
	end
}

