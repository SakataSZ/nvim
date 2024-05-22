return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      source_selector = {
        winbar = true,
        statusline = true,
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 0,
        },
      },
      window = {
        width = 60,
      },
    },
  },
}
