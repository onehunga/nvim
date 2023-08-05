vim.g.mapleader = ' '
vim.loader.enable()

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'https://github.com/folke/lazy.nvim.git',
		lazypath
	})
end

vim.opt.rtp:prepend(lazypath)

require 'lazy'.setup(require 'plugins')
require 'lsp'

require 'opts'
require 'binds'

-- global status bar
vim.api.nvim_create_autocmd('BufEnter', {
	callback = function()
		vim.cmd [[ set laststatus=3 ]]
		vim.cmd [[ highlight WinSeparator guibg=NONE ]]
	end
})

vim.cmd [[ colorscheme rose-pine ]]
