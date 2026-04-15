<div align="center">
  <h1>voltwave</h1>
</div>

Inspired by Synthwave84 and [Fluoromachine](https://github.com/maxmx03/fluoromachine.nvim), this Neovim color theme features a retro-futuristic vibe with a touch of “green electricity”—a personal touch I added to suit my own taste.

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
  bolt = true,                -- 稲妻ライム緑 (#B6FF00) を MatchParen, LSP Hint, TODO コメントで使う (default: true)
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

voltwave という名前にちなんだ稲妻演出です。`bolt = false` にするとフォールバック色 (`green3`) が使われます。

## lualine

```lua
require('lualine').setup {
  options = {
    theme = require('voltwave.extras.lualine').get(),
  },
}
```

## Palette

[Palette](./lua/voltwave/palette.lua)

## License

[MIT License](./LICENSE)
