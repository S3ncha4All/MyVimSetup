local map = {}
map["cyberdream"] = {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,
				hide_fillchars = true,
				borderless_telescope = true,
				theme = {
					highlights = {
						NotifyBackground = { bg = "#16181a" },
						LineNr = { fg = "#666b76" },
						CursorLineNr = { fg = "#adb1b9" },
						Constant = { fg = "#00beae" },
						Operator = { fg = "#9dda00" },
						Type = { fg = "#00e5ea", style = "bold" },
					},
				},
			})
			vim.cmd("colorscheme cyberdream")
		end,
	},
}
map["tokyonight"] = {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
		},
	},
}
map["everforest"] = {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				background = "hard",
				transparent_background_level = 2,
			})
			vim.cmd("colorscheme everforest")
		end,
	},
}

return map[Colortheme]
