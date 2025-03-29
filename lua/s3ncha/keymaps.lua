-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
wk.add({

    -- File [F]
    { "<leader>f",  group = "File" },
    { "<leader>ff", "<cmd>Files<cr>",                            desc = "Find File",           mode = "n" },
    { "<leader>fg", "<cmd>GFiles<cr>",                           desc = "Find Git-File",       mode = "n" },
    { "<leader>fl", "<cmd>RG<cr>",                               desc = "Grep",                mode = "n" },

    { "<leader>fr", "<cmd>References<cr>",                       desc = "Find Reference",      mode = "n" },
    { "<leader>fs", "<cmd>DocumentSymbols<cr>",                  desc = "Find Symbols in Document",         mode = "n" },
    { "<leader>fi", "<cmd>Implementations<cr>",                  desc = "Find Implementation", mode = "n" },
    { "<leader>fx", "<cmd>Diagnostics<cr>",                      desc = "Show all Diagnostics in Document",         mode = "n" },

    -- Edit [E]
    { "<leader>e",  group = "Edit" },
    { "<leader>eu", function() require("undotree").toggle() end, desc = "Undo Tree",           mode = "n" },

    -- Window [W]
    { "<leader>w",  group = "Window" },
    { "<leader>wn", "<cmd>Neotree toggle<cr>",                   desc = "Toggle Neotree",      mode = "n" },

    -- Code(Actions) [C]
    { "<leader>c",  group = "Code" },
    { "<leader>cr", function() vim.lsp.buf.rename() end,         desc = "Refactor",            mode = "n" },
    { "<leader>ca", function() vim.lsp.buf.code_action() end,    desc = "Actions",             mode = "n" },
    { "<leader>cf", function() vim.lsp.buf.format() end,         desc = "Format Document",     mode = "n" },

    -- GoTo [G]
    { "gr",         function() vim.lsp.buf.references() end,     desc = "GoTo Reference",      mode = "n" },
    { "gd",         function() vim.lsp.buf.definition() end,     desc = "GoTo Definition",     mode = "n" },

    -- Move
    -- { "<c-k>",      "<cmd>m '<-2<cr>gv=gv",                   desc = "Move up",        mode = "v" },
    -- { "<c-j>",      "<cmd>m '>+2<cr>gv=gv",                   desc = "Move down",      mode = "v" },

})
