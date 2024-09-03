return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		triggers = {
			{ "<auto>", mode = "nixsotc" },
			{ "a", mode = { "n", "v" } },
			{ "<leader>", mode = { "n", "v" } },
		},
	},
}
