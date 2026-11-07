local M = {}

local defaults = {
  transparent = false, -- clear backgrounds so the terminal shows through
  terminal_colors = true, -- set vim.g.terminal_color_0..15
  italic_comments = true,
  overrides = nil, -- function(colors) -> { Group = { ... } }
}

M.options = vim.deepcopy(defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts or {})
end

function M.load()
  local c = require("retro_sunset.palette")
  local o = M.options

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "retro-sunset"

  local groups = require("retro_sunset.groups").get(c, o)
  if type(o.overrides) == "function" then
    groups = vim.tbl_extend("force", groups, o.overrides(c) or {})
  end
  for name, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, name, spec)
  end

  if o.terminal_colors then
    for i, color in ipairs(c.terminal) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end
end

return M
