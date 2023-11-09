local plugins = {
  -- LSP stuff
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = function()
      return require("plugins.mason")
    end,
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },

  -- Github Copilot
  {
    "github/copilot.vim",
    event = "BufRead",
    config = function()
      vim.g.copilot_filetypes = { markdown = true }
    end,
  }
}

local opts = require("plugins.lazy")

require("lazy").setup(plugins, opts)
