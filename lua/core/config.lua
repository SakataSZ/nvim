------------------------------------------------------------
-- general config
------------------------------------------------------------
local opt = vim.opt
local g = vim.g

-- netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30

-- appearance
opt.shortmess:append("I")
opt.fillchars = { eob = " " }

-- status line
opt.showmode = false

-- clipboard
opt.clipboard = "unnamedplus"

-- indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

-- search
opt.ignorecase = true
opt.smartcase = true

-- leader
g.mapleader = " "

-- scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

------------------------------------------------------------
-- autocmds
------------------------------------------------------------
local autocmd = vim.api.nvim_create_autocmd

-- disable auto commenting
autocmd("FileType", {
	pattern = "*",
	command = "setlocal formatoptions-=cro",
})

-- remove trailing whitespace on save
autocmd("BufWritePre", {
	pattern = "*",
	command = ":%s/\\s\\+$//e",
})

-- remove duplicate blank lines on save
autocmd("BufWritePre", {
	pattern = "*",
	command = ":%s/\\n\\{3,}/\\r\\r/e",
})
