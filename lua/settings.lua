local global = vim.g
local o = vim.o

vim.scriptencoding = "utf-8"

-- Map <leader>

global.mapleader = " "
global.maplocalleader = " "

-- Editor options

o.number = true
o.autoindent = true
o.clipboard = "unnamedplus"
o.syntax = "on"
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.encoding = "utf-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true
o.inccomand = "split"
o.splitbelow = "splitright"
o.termguicolors = true
