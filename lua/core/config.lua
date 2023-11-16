------------------------------------------------------------
-- general config
------------------------------------------------------------
local opt = vim.opt
local g = vim.g
local _border = "single"

-- language
vim.cmd('let $LANG="en_US.UTF-8"')

-- netrw
g.netrw_liststyle = 3
g.netrw_banner = 0
g.netrw_winsize = 20

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

-- appearance
opt.shortmess:append("I")
opt.fillchars = { eob = " " }
opt.laststatus = 3
opt.termguicolors = true
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = _border })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = _border })
vim.diagnostic.config({ float = { border = _border } })

-- environment
g.loaded_node_provider = 0

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
