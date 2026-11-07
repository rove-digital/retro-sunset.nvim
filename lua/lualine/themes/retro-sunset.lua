local c = require("retro_sunset.palette")

local function mode(color)
  return {
    a = { fg = c.bg, bg = color, gui = "bold" },
    b = { fg = c.fg, bg = c.bg_highlight },
    c = { fg = c.fg_soft, bg = c.bg_dark },
  }
end

return {
  normal = mode(c.orange),
  insert = mode(c.cyan),
  visual = mode(c.peach),
  replace = mode(c.red),
  command = mode(c.fg),
  terminal = mode(c.aqua),
  inactive = {
    a = { fg = c.fg_gutter, bg = c.bg_dark },
    b = { fg = c.fg_gutter, bg = c.bg_dark },
    c = { fg = c.fg_gutter, bg = c.bg_dark },
  },
}
