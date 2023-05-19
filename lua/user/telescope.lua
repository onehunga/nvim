local telescope = require 'telescope'
local actions = require 'telescope.actions'

local ignore = {
	'^bin$',
	'^build$',
	'^target$'
}

telescope.setup {
	defaults = {
		mappings = {
			i = {
				['<C-f>'] = actions.close
			}
		},
		file_ignore_patterns = ignore,
		-- layout_config = {
		-- 	horizontal = {
		-- 		prompt_position = "bottom",
		-- 		preview_width = 0,
		-- 		results_width = 0.4,
		-- 		results_height = 0.4
		-- 	},
		-- 	vertical = {
		-- 		mirror = false,
		-- 	},
		-- 	width = 0.50,
		-- 	height = 0.50,
		-- 	preview_cutoff = 120,
		-- }
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = 'smart_case'
		}
	}
}

telescope.load_extension('fzf')

