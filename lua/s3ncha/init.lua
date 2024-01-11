require("s3ncha.plugin")

require("s3ncha.config")

require("s3ncha.keymappings")
require("s3ncha.settings")


-- Make Background transparent
require('tokyonight').setup({
    disable_background = true
})
color = color or "tokyonight-night"
vim.cmd.colorscheme(color)

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })