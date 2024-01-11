local plugins = {
    "nvim-tree/nvim-web-devicons",
	"mbbill/undotree", -- Undotree
	"tpope/vim-fugitive", -- Git Integration
    
	{
		"folke/which-key.nvim", -- Helper: Overview der einzelnen verfügbaren keys bei <leader> etc.
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
	},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.5", -- FuzzyFinder
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"folke/tokyonight.nvim", -- Colortheme
		name = "tokyonight",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter", -- Highlight, edit, and navigate code
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
	},
	
	-- LSP Configuration
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	---------------------
	
}
return plugins