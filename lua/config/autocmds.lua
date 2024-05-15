-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("FileType", {
  group = augroup("turn_off_auto_commenting", {}),
  pattern = "*",
  command = [[setlocal fo-=cro]],
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  command = "setlocal nospell",
})
