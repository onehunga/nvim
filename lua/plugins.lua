return {
	-- debugging
	'mfussenegger/nvim-dap',
	'rcarriga/nvim-dap-ui',
	'theHamsta/nvim-dap-virtual-text',
	'nvim-telescope/telescope-dap.nvim',

	{
		'lewis6991/gitsigns.nvim',
		config = function()
			require 'user.gitsigns'
		end
	},


	-- lsp
	'neovim/nvim-lspconfig',
	{
		'williamboman/mason.nvim',
		dependencies = {
			'williamboman/mason-lspconfig.nvim'
		}
	},

	-- completion
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
				highlight = {
					enabled = true
				},
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
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v3.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
			'MunifTanjim/nui.nvim',
		},
		config = function()
			require 'user.neotree'
		end
	},
	-- {
	-- 	'nvim-lualine/lualine.nvim',
	-- 	config = function()
	-- 		require 'user.lualine'
	-- 		-- require 'user.lualine_evil'
	-- 	end
	-- },
	{
		'rebelot/heirline.nvim',
		config = function()
			require 'user.heirline'
		end
	},
	{
		'SmiteshP/nvim-navic',
		config = function ()
			require 'user.navic'
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
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		config = function()
			local wk = require 'which-key'
			wk.setup()
		end
	},
	{
		'j-hui/fidget.nvim',
		branch = 'legacy',
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
	},

	{
		'echasnovski/mini.nvim',
		config = function ()
			require 'user.mini'
		end
	},

	{
		"ray-x/go.nvim",
		dependencies = {  -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("user.go")
		end,
		event = {"CmdlineEnter"},
		ft = {"go", 'gomod'},
		build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
	},
	{
		'Tetralux/odin.vim',
		event = {"CmdlineEnter"},
		ft = {"odin"},
	},
	{
		'https://git.sr.ht/~sircmpwn/hare.vim',
		event = {"CmdlineEnter"},
		ft = {"hare"},
	},
	{
		'gleam-lang/gleam.vim',
		event = { "CmdlineEnter" },
		ft = "gleam",
	},
	{
		'simrat39/rust-tools.nvim',
		config = function()
			require 'user.rust'
		end,
		event = {"CmdlineEnter"},
		ft = {"rust"},
	},

	'rebelot/kanagawa.nvim',
	'Mofiqul/adwaita.nvim',
	'bluz71/vim-moonfly-colors',
	'Shatur/neovim-ayu',
	'ellisonleao/gruvbox.nvim',
	'lurst/austere.vim',
	'navarasu/onedark.nvim',
	'catppuccin/nvim',
	'rose-pine/neovim',
	'folke/tokyonight.nvim',
	'blazkowolf/gruber-darker.nvim',
	'Yazeed1s/oh-lucy.nvim',
	'RRethy/nvim-base16',
	'ribru17/bamboo.nvim',
	'tiagovla/tokyodark.nvim',
	'savq/melange-nvim',
	'ajmwagar/vim-deus',

	{
		'CrispyBaccoon/evergarden',
		config = function ()
			require 'user.themes.evergarden'
		end
	},
	{
		'rockyzhang24/arctic.nvim',
		branch = 'v2',
		dependencies = {
			'rktjmp/lush.nvim',
		},
	},
}
