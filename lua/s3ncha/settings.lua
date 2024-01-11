-- Global Settings
-- Show relative line numbers
vim.opt.relativenumber = true
-- show current line number
vim.opt.nu = true

-- wait 5000ms to complete commands (press <leader> + some other key)
vim.opt.timeoutlen = 5000

-- dont scroll all the way to the bottom/top, instead leave always 8 lines buffer
vim.opt.scrolloff = 8

-- Copied
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
