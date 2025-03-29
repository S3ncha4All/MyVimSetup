return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    triggers = {
      { "<auto>",   mode = "nixsotc" },
      { "<leader>", mode = { "n", "v" } },
    },
  },
}
