vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.wrap = false

vim.opt.cursorline = true

vim.opt.termguicolors = true

vim.opt.splitright = true
vim.opt.clipboard:append("unnamedplus")

-- make nvim read all files as latex with ext: .tex
vim.g.tex_flavor = "latex"

-- TODO: Understand what this line does >+1<CR>gv=gv
-- TODO:

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

require("config.lazy")
