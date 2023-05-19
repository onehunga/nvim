local mason = require 'mason'
local mason_lspconfig = require 'mason-lspconfig'

mason.setup {}
mason_lspconfig.setup {}

mason_lspconfig.setup_handlers {
	function(server_name)
		local opts = {
			on_attach = require 'lsp.handlers'.on_attach,
			capabilities = require 'lsp.handlers'.capabilities
		}

		require('lspconfig')[server_name].setup(opts)
	end
}

