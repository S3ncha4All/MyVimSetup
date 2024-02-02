return {
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
					},
				},
			})
			vim.cmd("colorscheme cyberdream")
		end,
	},
}
