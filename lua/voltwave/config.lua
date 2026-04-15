local M = {}

local defaults = {
  transparent = false,
  bolt = true,  -- 稲妻ライム緑 (#B6FF00) を MatchParen, Hint, TODO で使う
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
