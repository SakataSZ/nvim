local M = {}

M.general = {
  i = {},
  n = {
    ["<ESC>"] = { ":noh <CR>" },

    -- move between windows
    ["<c-h>"] = { "<c-w>h" },
    ["<C-l>"] = { "<C-w>l" },
    ["<C-j>"] = { "<C-w>j" },
    ["<C-k>"] = { "<C-w>k" },

    -- move between buffers
    ["<TAB>"] = { ":bnext <CR>" },
    ["<S-TAB>"] = { ":bprevious <CR>" },
    ["<leader>x"] = { ":bd <CR>" },
    ["<leader>X"] = { ":bufdo bd <CR>" },

    -- toggle netrw
    ["<C-n>"] = { ":Lexplore <CR>" },
  },
  v = {},
  t = {},
}

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local function apply_keymap(mode, lhs, rhs, opts)
  keymap(mode, lhs, rhs, opts)
end

function M.setup()
  for mode, maps in pairs(M.general) do
    for lhs, rhs in pairs(maps) do
      apply_keymap(mode, lhs, rhs[1], opts)
    end
  end
end

return M
