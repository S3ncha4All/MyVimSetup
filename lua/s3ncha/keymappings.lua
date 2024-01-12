vim.g.mapleader = " "


local wk = require("which-key")

wk.register({
    ["<leader>s"] = {
        name = "+search",
        f = { "", "Search File" }
        -- f = { "", "Search File" }
    },
})
