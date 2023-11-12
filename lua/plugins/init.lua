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
			vim.g.copilot_filetypes = { markdown = true }
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
		config = function()
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
			vim.cmd([[ highlight NormalFloat guibg=none ctermbg=none ]])
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
