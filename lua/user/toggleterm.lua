local toggleterm = require 'toggleterm'

toggleterm.setup {
	size = 40,
	open_mapping = '<C-s>',
	hide_numbers = true,
	start_in_insert = true,
	insert_mappings = true,
	shell = 'fish',
	direction = 'float',
	float_opts = {
		border = 'curved',
		highlights = {
			border = 'Normal',
			background = 'Normal',
		}
	}
}

local Terminal = require 'toggleterm.terminal'.Terminal
local lazygit = Terminal:new({cmd = 'gitui', hidden = true})
local vertical = Terminal:new({cmd = 'zsh'})

function _Lazygit_toggle()
	lazygit:toggle(20, 'float')
end

function _VerticalTermToggle()
	vertical:toggle(50, 'vertical')
end
