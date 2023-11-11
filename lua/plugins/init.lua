local plugins = {
	-- Github Copilot
	{
		"github/copilot.vim",
		event = "BufRead",
		config = function()
			vim.g.copilot_filetypes = { markdown = true }
		end,
	},

	-- LSP stuff
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
			require("nvterm").setup()
		end,
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

	-- colorscheme
	{
		"catppuccin/nvim",
		name = "catppuccin-mocha",
		priority = 1000,
		event = "BufEnter",
		config = function()
			vim.cmd("colorscheme catppuccin")
			vim.cmd([[ highlight Normal guibg=none ctermbg=none ]])
			vim.cmd([[ highlight NormalNC guibg=none ctermbg=none ]])
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
}

-- load Lazy
local opts = require("plugins.configs.lazy")
require("lazy").setup(plugins, opts)

-- load Keymaps
local keymaps = require("plugins.keymap")
require("core.utils").load_keymaps(keymaps)
