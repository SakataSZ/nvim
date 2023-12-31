local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 80
local height = 30

print(gheight .. " " .. gwidth)

return {
  sort_by = "case_sensitive",
  view = {
    float = {
      enable = false,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = width,
        height = height,
        row = (gheight - height) / 2,
        col = (gwidth - width) / 2,
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  update_focused_file = {
    enable = true,
  },
}
