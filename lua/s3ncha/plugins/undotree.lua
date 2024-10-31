return {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    require("undotree").setup({
      float_diff = true,
      ignore_filetype = {
        "undotree",
        "tsplayground"
      }
    })
  end,
  requires = {
    "nvim-lua/plenary.nvim",
  },
}
