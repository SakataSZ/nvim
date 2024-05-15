local autocmd = vim.api.nvim_create_autocmd

return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("toggleterm").setup({
        shade_terminals = false,
      })
    end,
    keys = {
      {
        "<M-i>",
        "<cmd> 1ToggleTerm direction=float name=float <cr>",
        mode = { "n", "i", "t" },
        desc = "toggle floating terminal",
      },
      {
        "<M-h>",
        "<cmd> 2ToggleTerm direction=horizontal size=15 name=horizon <cr>",
        mode = { "n", "i", "t" },
        desc = "toggle horizontal terminal",
      },
      {
        "<M-v>",
        "<cmd> 3ToggleTerm direction=vertical size=80 name=vertical <cr>",
        mode = { "n", "i", "t" },
        desc = "toggle vertical terminal",
      },
    },
  },
}
