return {
	'rebelot/kanagawa.nvim',
	'Mofiqul/adwaita.nvim',
	'bluz71/vim-moonfly-colors',
	'Shatur/neovim-ayu',
	'ellisonleao/gruvbox.nvim',

	'neovim/nvim-lspconfig',
	{
		'williamboman/mason.nvim',
		dependencies = {
			'williamboman/mason-lspconfig.nvim'
		}
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'onsails/lspkind.nvim',
	
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-nvim-lsp',
			'saadparwaiz1/cmp_luasnip',
			{
				'L3MON4D3/LuaSnip', --snippet engine
				dependencies = { 'rafamadriz/friendly-snippets' }
			}
		},
		config = function()
			require 'user.cmp'
		end
	},
	{
		'windwp/nvim-autopairs',
		config = function()
			require 'nvim-autopairs'.setup()
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				highlight = true
			}
		end
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				build = 'make'
			}
		},
		config = function()
			require 'user.telescope'
		end
	},
	{
		'akinsho/toggleterm.nvim',
		config = function()
			require 'user.toggleterm'
		end
	},
	{
		'kyazdani42/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			require 'user.nvimtree'
		end
	},
	{
		'nvim-lualine/lualine.nvim',
		config = function()
			require 'user.lualine_evil'
		end
	},
	{
		'numToStr/Comment.nvim',
		config = function()
			require 'Comment'.setup()
		end
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			require 'user.bufferline'
		end
	},
	{
		'folke/which-key.nvim',
		config = function()
			local wk = require 'which-key'
			wk.setup()
		end
	},
	{
		'j-hui/fidget.nvim',
		config = function()
			require 'fidget'.setup {}
		end
	},
	'weilbith/nvim-code-action-menu',
	{
		'xiyaowong/transparent.nvim',
		config = function()
			require 'transparent'.setup {}
		end
	}
}
