local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

function bind(key, cmd)
	keymap('n', key, cmd, opts)
	keymap('v', key, cmd, opts)
	keymap('x', key, cmd, opts)
end

function ibind(key, cmd)
	bind(key, cmd)
	keymap('i', key, cmd, opts)
end

bind('<C-e>', ':NvimTreeToggle<cr>')
ibind('<A-,>', ':BufferLineCyclePrev<cr>')
ibind('<A-.>', ':BufferLineCycleNext<cr>')
bind('<A-q>', ':bw<cr>')
bind('<leader>ff', ':Telescope find_files<cr>')
bind('<leader>fw', ':Telescope live_grep<cr>')
bind('<leader>b', ':Telescope buffers<cr>')
bind('<C-f>', ':Telescope find_files<cr>')
bind('<leader>g', '<cmd>lua _Lazygit_toggle()<cr>')
bind('<leader>a', '<cmd>CodeActionMenu<cr>')

function _Toggle_linewise()
	require 'Comment.api'.toggle.linewise()
end

local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)

function _Toggle_selection()
	vim.api.nvim_feedkeys(esc, 'nx', false)
	require 'Comment.api'.toggle.linewise(vim.fn.visualmode())
end

ibind('<C-c>', '<cmd> lua _Toggle_linewise()<cr>')
keymap('x', '<C-c>', '<cmd>lua _Toggle_selection()<cr>', opts)
