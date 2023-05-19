require 'bufferline'.setup {
	options = {
		offsets = {
			{
				filetype = 'NvimTree',
				text = 'Explorer',
				seperator = true,
				text_align = 'center'
			}
		},
		diagnostics = 'nvim_lsp',
		show_close_icon = false,
		show_buffer_close_icon = false,
	}
}
