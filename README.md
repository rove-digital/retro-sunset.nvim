# Retro Sunset (`retro-sunset.nvim`)

A dark Neovim colourscheme that uses the [Retro 82](https://github.com/OldJobobo/omarchy-retro-82-theme)
palette by OldJobobo.

| Role | Colour |
|---|---|
| Background | `#00172E` |
| Text / variables | `#F6DCAC` |
| Functions & methods | `#F85525` (bold) |
| Keywords | `#3F8F8A` |
| Parameters & types | `#E97B3C` |
| Builtin types | `#39B5D4` |
| Strings | `#028391` |
| Numbers & constants | `#FF6B3D` |
| Comments | `#134E5A` (italic) |

## Install

`vim.pack` (Neovim 0.12+):

```lua
vim.pack.add({ "https://github.com/<you>/retro-sunset.nvim" })
require("retro_sunset").setup({ transparent = false })
vim.cmd.colorscheme("retro-sunset")
```

lazy.nvim:

```lua
{
  "<you>/retro-sunset.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("retro_sunset").setup()
    vim.cmd.colorscheme("retro-sunset")
  end,
}
```

## Options

```lua
require("retro_sunset").setup({
  transparent = false,     -- clear backgrounds so the terminal shows through
  terminal_colors = true,  -- set :terminal colours
  italic_comments = true,
  overrides = function(c)  -- c = require("retro_sunset.palette")
    return { CursorLine = { bg = c.bg_dark } }
  end,
})
```

## Lualine

```lua
require("lualine").setup({ options = { theme = "retro-sunset" } })
```

## Plugin support

Treesitter, LSP semantic tokens, diagnostics, gitsigns, telescope, which-key,
blink.cmp, mini.nvim, indent-blankline, neo-tree, fidget, mason, todo-comments,
render-markdown, nvim-dap.
