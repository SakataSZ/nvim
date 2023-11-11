local M = {}

M.telescope = {
	n = {
		-- find
		["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
		["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
		["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
		["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
		["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
		["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
		["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },

		-- git
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

return M
