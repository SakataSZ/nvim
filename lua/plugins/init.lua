local plugins = {
  ------------------------------------------------------------
  -- LSP and completion
  ------------------------------------------------------------
  -- Mason
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = function()
      return require("plugins.configs.mason")
    end,
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },

  -- Mason LSP config
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    event = "BufEnter",
    opts = function()
      return require("plugins.configs.mason-lspconfig")
    end,
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end,
  },

  -- CMP
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
      {
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("plugins.configs.luasnip").luasnip(opts)
        end,
      },
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          local cmp_autopairs = require("nvim-autopairs.completion.cmp")
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },
    },
    opts = function()
      return require("plugins.configs.cmp")
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },

  ------------------------------------------------------------
  -- Utilities
  ------------------------------------------------------------

  -- Github Copilot
  {
    "github/copilot.vim",
    event = "BufRead",
    config = function()
      vim.g.copilot_filetypes = { ["*"] = true }
    end,
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = function()
      return require("plugins.configs.gitsigns")
    end,
    config = function(_, opts)
      require("gitsigns").setup(opts)
    end,
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    opts = function()
      return require("plugins.configs.telescope")
    end,
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
    end,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },

  -- nvterm
  {
    "NvChad/nvterm",
    opts = function()
      return require("plugins.configs.nvterm")
    end,
    config = function(_, opts)
      require("nvterm").setup(opts)
    end,
  },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeOpen", "NvimTreeClose" },
    opts = function()
      return require("plugins.configs.nvim-tree")
    end,
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  },

  -- markdown-preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && bun install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  ------------------------------------------------------------
  -- appearance
  ------------------------------------------------------------

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfor" },
    event = "BufRead",
    opts = function()
      return require("plugins.configs.treesitter")
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "BufEnter",
    opts = function()
      return require("plugins.configs.bufferline")
    end,
    config = function(_, opts)
      require("bufferline").setup(opts)
    end,
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    opts = function()
      return require("plugins.configs.lualine")
    end,
    config = function(_, opts)
      require("lualine").setup(opts)
    end,
  },

  -- colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    event = "BufEnter",
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = true,
        integrations = {
          cmp = true,
          treesitter = true,
          nvimtree = true,
        },
        custom_highlights = function(colors)
          return {
            CursorLine = { bg = colors.overlay0 },
            FloatBorder = { fg = colors.sapphire },
            LineNr = { fg = colors.sapphire },
            WinSeparator = { fg = colors.sapphire },
            NvimTreeWinSeparator = { fg = colors.sapphire },
            Comment = { fg = colors.sapphire },
          }
        end,
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },
}

-- load Lazy
local opts = require("plugins.configs.lazy")
require("lazy").setup(plugins, opts)

-- load Keymaps
local keymaps = require("plugins.keymap")
require("core.utils").load_keymaps(keymaps)
