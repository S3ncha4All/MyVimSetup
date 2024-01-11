-- Install the lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup({
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
	{ 'feline-nvim/feline.nvim', branch = '0.5-compat' }, -- Pretty status line
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
	

	
})
