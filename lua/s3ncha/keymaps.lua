-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
wk.add({

    -- File [F]
    { "<leader>f",  group = "File" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>",             desc = "Find File",           mode = "n" },
    { "<leader>fg", "<cmd>Telescope git_files<cr>",              desc = "Find Git-File",       mode = "n" },
    { "<leader>fl", "<cmd>Telescope live_grep<cr>",              desc = "Grep",                mode = "n" },

    { "<leader>fr", "<cmd>Telescope lsp_references<cr>",         desc = "Find Reference",      mode = "n" },
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>",   desc = "Find Symbol",         mode = "n" },
    { "<leader>fi", "<cmd>Telescope lsp_implementations<cr>",    desc = "Find Implementation", mode = "n" },
    { "<leader>fx", "<cmd>Telescope diagnostics bufnr=0<cr>",    desc = "Find Errors",         mode = "n" },

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

    -- GoTo [G]
    { "gr",         function() vim.lsp.buf.references() end,     desc = "GoTo Reference",      mode = "n" },
    { "gd",         function() vim.lsp.buf.definition() end,     desc = "GoTo Definition",     mode = "n" },

    -- Move
    -- { "<c-k>",      "<cmd>m '<-2<cr>gv=gv",                   desc = "Move up",        mode = "v" },
    -- { "<c-j>",      "<cmd>m '>+2<cr>gv=gv",                   desc = "Move down",      mode = "v" },

})
