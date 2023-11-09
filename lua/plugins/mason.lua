local options = {
  ensure_installed = { "lua-language-server" },

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}

return options
