vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Allow for the creation of ts use cases
vim.keymap.set("n", "<leader>uc", "<Cmd>:lua CreateUseCase()<CR>", { silent = true, noremap = true })
-- Allow visual selected to move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allow substitution
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Allow insertion of new line in normal mode
vim.keymap.set("n", "<leader>o", "o<Esc>")

-- Remap Esc 
vim.keymap.set("i", "jk", "<Esc>")

-- Rapid window navigation
vim.keymap.set("n", "<leader>w", "<C-w><C-w>")
-- Rapid window navigation
vim.keymap.set("n", "<leader>w", "<C-w><C-w>")

-- System clipboard copy
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
