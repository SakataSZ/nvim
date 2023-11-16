local M = {}

M.telescope = {
	n = {
		["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
		["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
		["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
		["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
		["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
		["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
		["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
		["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
		["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "Git status" },
		["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
	},
}

local nvterm_keymap = {
	["<M-h>"] = { "<cmd> lua require('nvterm.terminal').toggle('horizontal') <CR>", "" },
	["<M-v>"] = { "<cmd> lua require('nvterm.terminal').toggle('vertical') <CR>", "" },
	["<M-i>"] = { "<cmd> lua require('nvterm.terminal').toggle('float') <CR>", "" },
	["<leader>h"] = { "<cmd> lua require('nvterm.terminal').new('horizontal') <CR>", "" },
	["<leader>v"] = { "<cmd> lua require('nvterm.terminal').new('vertical') <CR>", "" },
}
M.nvterm = {
	n = nvterm_keymap,
	t = nvterm_keymap,
}

M.lsp = {
	n = {
		["gD"] = { "<cmd> lua vim.lsp.buf.declaration() <CR>", "LSP declaration" },
		["gd"] = { "<cmd> lua vim.lsp.buf.definition() <CR>", "LSP definition" },
		["K"] = { "<cmd> lua vim.lsp.buf.hover() <CR>", "LSP hover" },
		["<leader>ra"] = { "<cmd> lua vim.lsp.buf.rename() <CR>", "LSP rename" },
		["<leader>ca"] = { "<cmd> lua vim.lsp.buf.code_action() <CR>", "LSP code action" },
		["<leader>f"] = { "<cmd> lua vim.diagnostic.open_float() <CR>", "LSP float diagnostic" },
		["[d"] = { "<cmd> lua vim.diagnostic.goto_prev() <CR>", "LSP goto prev diagnostic" },
		["]d"] = { "<cmd> lua vim.diagnostic.goto_next() <CR>", "LSP goto next diagnostic" },
	},
}

M.nvimtree = {
	n = {
		["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
	},
}

M.gitsigns = {
	n = {
		["[c"] = { "<cmd> Gitsigns next_hunk <CR>", "Next hunk" },
		["]c"] = { "<cmd> Gitsigns prev_hunk <CR>", "Previous hunk" },
		["<leader>rh"] = { "<cmd> Gitsigns reset_hunk <CR>", "Reset hunk" },
		["<leader>ph"] = { "<cmd> Gitsigns preview_hunk <CR>", "Preview hunk" },
		["<leader>gd"] = { "<cmd> Gitsigns diffthis <CR>", "git diff" },
	},
}

return M
