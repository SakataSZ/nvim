local theme = require("lualine.themes.base16")
-- theme.normal.a.bg = "Normal"
-- theme.normal.b.bg = "Normal"
theme.normal.c.bg = "Normal"
-- theme.insert.a.bg = "Normal"
-- theme.insert.b.bg = "Normal"
-- theme.insert.c.bg = "Normal"
-- theme.visual.a.bg = "Normal"
-- theme.visual.b.bg = "Normal"
-- theme.visual.c.bg = "Normal"
-- theme.replace.a.bg = "Normal"
-- theme.replace.b.bg = "Normal"
-- theme.replace.c.bg = "Normal"
-- theme.command.a.bg = "Normal"
-- theme.command.b.bg = "Normal"
-- theme.command.c.bg = "Normal"
-- theme.inactive.a.bg = "Normal"
-- theme.inactive.b.bg = "Normal"
theme.inactive.c.bg = "Normal"

return {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { "" },
    lualine_x = { "" },
    lualine_y = { "filetype" },
    lualine_z = { "filename" },
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
