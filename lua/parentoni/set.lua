-- Line numbers configs
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab opt configs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth= 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line Configs
vim.opt.wrap = false

-- Backup and storage
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors

-- Scroll and naviagtion
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
-- Screen
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Globals
vim.g.mapleader = " "
