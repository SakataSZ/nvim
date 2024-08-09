return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup()
      vim.cmd("colorscheme poimandres")

      -- NOTE: Workaround for LspReferenceHighlight.
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function()
          vim.cmd("highlight LspReferenceText NONE")
          vim.cmd("highlight LspReferenceRead NONE")
          vim.cmd("highlight LspReferenceWrite NONE")
        end,
      })
    end,
  },
}
