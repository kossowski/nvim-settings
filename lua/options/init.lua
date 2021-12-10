local o = vim.o 
local opt = vim.opt
local wo = vim.wo
local bo = vim.bo
local g = vim.g

g.mapleader = " "
g.tokyonight_style = "night"
g.tokyonight_transparent = true

o.timeoutlen = 200
o.shortmess = vim.o.shortmess .. 'c'
o.hidden = true
o.pumheight = 10
o.cmdheight = 2
o.splitbelow = true
o.splitright = true
o.scrolloff = 5
o.sidescrolloff = 5
o.conceallevel = 0
o.showtabline = 2
o.showmode = false
o.backup = false
o.writebackup = false
o.clipboard = "unnamedplus"
o.hlsearch = false
o.mouse = "a"
o.cursorline = true
o.tabstop = 2
o.shiftwidth = 2
o.autoindent = true
o.expandtab = true

wo.wrap = false
wo.number = true
wo.signcolumn = "yes"

opt.termguicolors = true

bo.expandtab = true
bo.shiftwidth = 2
bo.tabstop = 2
bo.softtabstop = 2
bo.autoindent = true
