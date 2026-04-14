# voltwave.nvim

Synthwave84 と [Fluoromachine](https://github.com/maxmx03/fluoromachine.nvim) からインスピレーションを受け、個人的な好みとして「緑の電流」を思わせるテイストを加えた、レトロフューチャーな雰囲気の Neovim カラーテーマです。

![screenshot](./screenshot.png)

## Requirements

- Neovim 0.10+
- `termguicolors` (enabled automatically)

## Installation

### lazy.nvim

```lua
{
  'shirokuroiori/voltwave.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('voltwave').setup({})
    vim.cmd.colorscheme('voltwave')
  end,
}
```

### packer.nvim

```lua
use {
  'shirokuroiori/voltwave.nvim',
  config = function()
    require('voltwave').setup({})
    vim.cmd.colorscheme('voltwave')
  end,
}
```

## Minimal Configuration

```lua
require('voltwave').setup({})
vim.cmd.colorscheme('voltwave')
```

## Full Configuration

```lua
require('voltwave').setup({
  transparent = false,        -- true: Normal/NormalNC/SignColumn etc. bg = NONE
  italic = {
    comments   = true,
    keywords   = false,
    functions  = false,
    variables  = false,
    types      = true,
    parameters = true,
    booleans   = false,
  },
  bold = {
    functions = false,
    keywords  = false,
  },
  plugins = {
    cmp              = true,
    telescope        = true,
    neo_tree         = true,
    bufferline       = true,
    indent_blankline = true,
    gitsigns         = true,
  },
  -- Override any highlight group
  overrides = {
    -- Example: make Normal background slightly lighter
    -- Normal = { fg = '#c0c4bb', bg = '#1a1726' },
  },
})
vim.cmd.colorscheme('voltwave')
```

## lualine

```lua
require('lualine').setup {
  options = {
    theme = require('voltwave.extras.lualine').get(),
  },
}
```

## Palette

| Role | Color |
|---|---|
| Background | `#15121c` |
| Background Alt | `#1b1826` |
| Surface | `#2d2a38` |
| Foreground | `#c0c4bb` |
| Green (Spotify) | `#1db954` |
| Green Bright | `#1ed760` |
| Green Accent | `#8EF4C6` |
| Pink | `#FF7EDB` |
| Purple | `#AF6DF9` |
| Cyan | `#61E2FF` |
| Yellow | `#F1FA8C` |
| Orange | `#FFB86C` |
| Red | `#FE4450` |

## License

MIT
