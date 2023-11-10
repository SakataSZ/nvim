local plugins = {
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

	-- toggle Term
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		cmd = "ToggleTerm",
		opts = function()
			return require("plugins.configs.toggleterm")
		end,
		config = function(_, opts)
			require("toggleterm").setup(opts)
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

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		opts = function()
			require("plugins.configs.telescope")
		end,
		config = function(_, opts)
			require("telescope").setup(opts)
		end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Github Copilot
	{
		"github/copilot.vim",
		event = "BufRead",
		config = function()
			vim.g.copilot_filetypes = { markdown = true }
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
}

local opts = require("plugins.configs.lazy")

require("lazy").setup(plugins, opts)
