local dap = require 'dap'

dap.adapters.lldb = {
	type = 'executable',
	command = '/usr/bin/lldb-vscode',
	name = 'lldb'
}

dap.configurations.c = {
	{
		name = 'launch',
		type = 'lldb',
		request = 'launch',
		program = function()
			return '${workspaceFolder}/' .. vim.fn.input('bin path: ')
		end,
		cwd = '${workspaceFolder}',
		args = {},
	}
}

require("dapui").setup {}
require 'nvim-dap-virtual-text'.setup{}

vim.fn.sign_define('DapBreakpoint', { text='', texthl='red', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='grey', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='', texthl='green', linehl='DapLogPoint', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='yellow', linehl='DapStopped', numhl= 'DapStopped' })
