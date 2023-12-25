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

bind('<C-e>', ':Neotree<cr>')
ibind('<A-,>', ':BufferLineCyclePrev<cr>')
ibind('<A-.>', ':BufferLineCycleNext<cr>')
bind('<A-q>', ':bw<cr>')
bind('<leader>ff', ':Telescope find_files<cr>')
bind('<leader>fg', ':Telescope live_grep<cr>')
bind('<leader>fw', ':Telescope lsp_document_symbols<cr>')
bind('<leader>b', ':Telescope buffers<cr>')
bind('<C-f>', ':Telescope find_files<cr>')
bind('<leader>g', '<cmd>lua _Lazygit_toggle()<cr>')
bind('<leader>a', '<cmd>CodeActionMenu<cr>')

--debugging
keymap('n', '<F5>', ":lua require'dap'.continue()<CR>", opts)
keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>", opts)
keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>", opts)
keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>", opts)
keymap('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap('n', '<leader>dB', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>", opts)
keymap('n', '<leader>lp', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
keymap('n', '<leader>dr', ":lua require'dap'.repl.open()<CR>", opts)
keymap('n', '<leader>dt', ":lua require 'dapui'.toggle()<CR>", opts)
vim.keymap.set({'n', 'v'}, '<Leader>dH', function()
	require('dap.ui.widgets').hover()
end)

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
