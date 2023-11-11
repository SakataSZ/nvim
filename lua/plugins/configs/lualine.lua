local theme = require("lualine.themes.ayu_mirage")
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
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
}
