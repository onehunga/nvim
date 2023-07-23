local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'

mason.setup {}
mason_lspconfig.setup {}

mason_lspconfig.setup_handlers {
	function(server_name)
		local opts = {}

		if server_name == 'lua_ls' then
			opts = require 'lsp.configs.lua'
		end

		require('lspconfig')[server_name].setup(opts)
	end
}

