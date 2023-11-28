local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
  ensure_installed = {
    "lua_ls",
    "astro",
    "pylsp",
    "tsserver",
    "docker_compose_language_service"
  },
  automatic_installation = false,
  handlers = {
    -- default handler
    function(server)
      local opts = { capabilities = capabilities }
      lsp[server].setup(opts)
    end,

    ["lua_ls"] = function()
      lsp.lua_ls.setup({
        settings = {
          Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim", "require" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
          },
        },
      })
    end,
  },
}
