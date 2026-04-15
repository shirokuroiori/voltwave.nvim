local M = {}

local defaults = {
  transparent = false,
  bolt = true,  -- 稲妻ライム緑 (#B6FF00) を MatchParen, Hint, TODO で使う
  glow = true,  -- 蛍光ネオン風の淡いオーラを主要グループへ付与
  glow_strength = 1.0, -- glow 強度倍率 (0.0-1.0 推奨)
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
    notify           = true,
    lualine          = true,
  },
  overrides = {},
}

M.options = vim.deepcopy(defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend('force', vim.deepcopy(defaults), opts or {})
end

return M
