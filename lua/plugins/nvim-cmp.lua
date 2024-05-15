return {
  {
    "hrsh7th/nvim-cmp",
    keys = function()
      local cmp = require("cmp")
      return {
        { "<C-o>", cmp.mapping.complete(), mode = "i", desc = "complete" },
      }
    end,
  },
}
