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

-- nvterm
local nvterm = require("nvterm.terminal")
local nvterm_keymap = {
  ["<M-h>"] = {
    function()
      nvterm.toggle("horizontal")
    end,
    "toggle horizontal",
  },
  ["<M-v>"] = {
    function()
      nvterm.toggle("vertical")
    end,
    "toggle vertical",
  },
  ["<M-i>"] = {
    function()
      nvterm.toggle("float")
    end,
    "toggle float",
  },
}
M.nvterm = {
  n = nvterm_keymap,
  t = nvterm_keymap,
}

-- LSP(lspsaga)
M.lsp = {
  n = {
    ["gd"] = { "<cmd> Lspsaga goto_definition <CR>", "LSP goto definition" },
    ["gD"] = { "<cmd> Lspsaga peek_definition <CR>", "LSP peek definition" },
    ["K"] = { "<cmd> Lspsaga hover_doc <CR>", "LSP show documentation" },
    ["<leader>rn"] = { "<cmd> Lspsaga rename <CR>", "LSP rename" },
    ["<leader>d"] = { "<cmd> Lspsaga show_line_diagnostics <CR>", "LSP show line diagnostics" },
    ["<leader>fi"] = { "<cmd> Lspsaga finder <CR>", "LSP show methods search result" },
    ["<leader>ca"] = { "<cmd> Lspsaga code_action <CR>", "LSP cade action" },
    ["[d"] = { "<cmd> Lspsaga diagnostics_jump_prev <CR>", "LSP jump to previous diagnostic" },
    ["]d"] = { "<cmd> Lspsaga diagnostics_jump_next <CR>", "LSP jump to next diagnostic" },
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
