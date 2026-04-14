return function(p, c)
  local comment_style = c.italic.comments and { italic = true } or {}
  local type_style    = c.italic.types    and { italic = true } or {}
  local func_style    = c.bold.functions  and { bold = true }   or {}
  local kw_style      = c.bold.keywords   and { bold = true }   or {}

  return {
    Comment        = vim.tbl_extend('force', { fg = p.comment }, comment_style),
    Constant       = { fg = p.purple_neon },
    String         = { fg = p.yellow },
    Character      = { fg = p.yellow },
    Number         = { fg = p.orange },
    Boolean        = { fg = p.purple_neon },
    Float          = { fg = p.orange },
    Identifier     = { fg = p.fg },
    Function       = vim.tbl_extend('force', { fg = p.green2 }, func_style),
    Statement      = vim.tbl_extend('force', { fg = p.pink_neon }, kw_style),
    Conditional    = vim.tbl_extend('force', { fg = p.pink_neon }, kw_style),
    Repeat         = vim.tbl_extend('force', { fg = p.pink_neon }, kw_style),
    Label          = { fg = p.pink_neon },
    Operator       = { fg = p.pink },
    Keyword        = vim.tbl_extend('force', { fg = p.pink_neon }, kw_style),
    Exception      = { fg = p.pink_neon },
    PreProc        = { fg = p.pink_neon },
    Include        = { fg = p.pink_neon, italic = true },
    Define         = { fg = p.pink_neon },
    Macro          = { fg = p.purple_neon },
    PreCondit      = { fg = p.pink_neon },
    Type           = vim.tbl_extend('force', { fg = p.cyan },   type_style),
    StorageClass   = { fg = p.pink_neon, italic = true },
    Structure      = { fg = p.pink_neon },
    Typedef        = vim.tbl_extend('force', { fg = p.cyan },   type_style),
    Special        = { fg = p.orange },
    SpecialChar    = { fg = p.pink },
    Tag            = { fg = p.pink_neon },
    Delimiter      = { fg = p.fg_dim },
    SpecialComment = { fg = p.green2, italic = true },
    Debug          = { fg = p.orange },
    Underlined     = { fg = p.cyan, underline = true },
    Ignore         = { fg = p.fg_dim },
    Error          = { fg = p.red, bold = true },
    Todo           = { fg = p.bg, bg = p.green3, bold = true },
  }
end
