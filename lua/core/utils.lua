local M = {}

-- M.lsp = {
--   n = {
--     ["gD"] = { "<cmd> lua vim.lsp.buf.declaration() <CR>", "LSP declaration" },
--     ["gd"] = { "<cmd> lua vim.lsp.buf.definition() <CR>", "LSP definition" },
--     ["K"] = { "<cmd> lua vim.lsp.buf.hover() <CR>", "LSP hover" },
--     ["<leader>ra"] = { "<cmd> lua vim.lsp.buf.rename() <CR>", "LSP rename" },
--     ["<leader>ca"] = { "<cmd> lua vim.lsp.buf.code_action() <CR>", "LSP code action" },
--     ["<leader>f"] = { "<cmd> lua vim.diagnostic.open_float() <CR>", "LSP float diagnostic" },
--     ["[d"] = { "<cmd> lua vim.diagnostic.goto_prev() <CR>", "LSP goto prev diagnostic" },
--     ["]d"] = { "<cmd> lua vim.diagnostic.goto_next() <CR>", "LSP goto next diagnostic" },
--   },
-- }

function M.load_keymaps(m)
  local keymap = vim.keymap.set
  local default_opts = { noremap = true, silent = true }

  for scope, modes in pairs(m) do
    for mode, maps in pairs(modes) do
      for lhs, rhs in pairs(maps) do
        local opts = vim.tbl_extend("force", default_opts, { desc = rhs[2] })
        keymap(mode, lhs, rhs[1], opts)
      end
    end
  end
end

return M
