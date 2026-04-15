return function(p, c)
  local it = function(tbl, key)
    return c.italic[key] ~= false and tbl or vim.tbl_extend('force', tbl, { italic = false })
  end

  return {
    -- 識別子
    ['@variable']              = { fg = p.fg },
    ['@variable.builtin']      = { fg = p.purple_neon, italic = c.italic.variables },
    ['@variable.parameter']    = { fg = p.orange, italic = c.italic.parameters },
    ['@variable.member']       = { fg = p.cyan },
    ['@constant']              = { fg = p.purple_neon },
    ['@constant.builtin']      = { fg = p.purple_neon, bold = true },
    ['@constant.macro']        = { fg = p.purple_neon },
    ['@module']                = { fg = p.cyan,   italic = true },
    ['@label']                 = { fg = p.pink },

    -- リテラル
    ['@string']                = { fg = p.yellow },
    ['@string.documentation']  = { fg = p.comment, italic = true },
    ['@string.regexp']         = { fg = p.orange },
    ['@string.escape']         = { fg = p.pink },
    ['@string.special']        = { fg = p.pink },
    ['@string.special.url']    = { fg = p.cyan, underline = true },
    ['@character']             = { fg = p.yellow },
    ['@character.special']     = { fg = p.pink },
    ['@number']                = { fg = p.orange },
    ['@number.float']          = { fg = p.orange },
    ['@boolean']               = { fg = p.purple_neon },

    -- 関数・型
    ['@function']              = { fg = p.green, italic = c.italic.functions, bold = true },
    ['@function.builtin']      = { fg = p.green, italic = true, bold = true },
    ['@function.call']         = { fg = p.green, italic = c.italic.functions, bold = true },
    ['@function.macro']        = { fg = p.green3 },
    ['@function.method']       = { fg = p.green, italic = c.italic.functions, bold = true },
    ['@function.method.call']  = { fg = p.green, italic = c.italic.functions, bold = true },
    ['@constructor']           = { fg = p.cyan },
    ['@type']                  = { fg = p.cyan,   italic = c.italic.types },
    ['@type.builtin']          = { fg = p.cyan,   italic = c.italic.types, bold = true },
    ['@type.definition']       = { fg = p.cyan,   italic = c.italic.types },
    ['@type.qualifier']        = { fg = p.pink },
    ['@attribute']             = { fg = p.green,  italic = true },
    ['@property']              = { fg = p.cyan },
    ['@field']                 = { fg = p.cyan },

    -- キーワード・演算子
    ['@keyword']                      = { fg = p.pink_neon, bold = c.bold.keywords },
    ['@keyword.function']             = { fg = p.pink_neon, italic = true },
    ['@keyword.operator']             = { fg = p.pink_neon },
    ['@keyword.import']               = { fg = p.pink_neon, italic = true },
    ['@keyword.type']                 = { fg = p.pink_neon },
    ['@keyword.modifier']             = { fg = p.pink_neon, italic = true },
    ['@keyword.repeat']               = { fg = p.pink_neon },
    ['@keyword.return']               = { fg = p.pink_neon, bold = true },
    ['@keyword.debug']                = { fg = p.orange },
    ['@keyword.exception']            = { fg = p.pink_neon },
    ['@keyword.conditional']          = { fg = p.pink_neon },
    ['@keyword.conditional.ternary']  = { fg = p.pink_neon },
    ['@keyword.directive']            = { fg = p.pink_neon },
    ['@keyword.directive.define']     = { fg = p.pink_neon },
    ['@keyword.coroutine']            = { fg = p.pink_neon, italic = true },
    ['@operator']                     = { fg = p.pink },

    -- 句読点・コメント・タグ
    ['@punctuation.delimiter']  = { fg = p.fg },
    ['@punctuation.bracket']    = { fg = p.fg },
    ['@punctuation.special']    = { fg = p.pink },
    ['@comment']                = { fg = p.comment, italic = c.italic.comments },
    ['@comment.documentation']  = { fg = p.comment, italic = c.italic.comments },
    ['@comment.error']          = { fg = p.red,     bold = true },
    ['@comment.warning']        = { fg = p.orange,  bold = true },
    ['@comment.todo']           = { fg = p.bg, bg = c.bolt and p.green_bolt or p.green3, bold = true },
    ['@comment.note']           = { fg = p.bg,      bg = p.cyan,   bold = true },
    ['@tag']                    = { fg = p.pink },
    ['@tag.attribute']          = { fg = p.green2,  italic = true },
    ['@tag.delimiter']          = { fg = p.fg_dim },

    -- マークアップ
    ['@markup.strong']            = { fg = p.orange, bold = true },
    ['@markup.italic']            = { fg = p.yellow, italic = true },
    ['@markup.strikethrough']     = { fg = p.fg_dim, strikethrough = true },
    ['@markup.underline']         = { underline = true },
    ['@markup.heading']           = { fg = p.purple, bold = true },
    ['@markup.heading.1']         = { fg = p.green2, bold = true },
    ['@markup.heading.2']         = { fg = p.cyan,   bold = true },
    ['@markup.heading.3']         = { fg = p.purple, bold = true },
    ['@markup.heading.4']         = { fg = p.pink,   bold = true },
    ['@markup.heading.5']         = { fg = p.orange, bold = true },
    ['@markup.heading.6']         = { fg = p.yellow, bold = true },
    ['@markup.quote']             = { fg = p.yellow, italic = true },
    ['@markup.math']              = { fg = p.cyan },
    ['@markup.link']              = { fg = p.cyan },
    ['@markup.link.label']        = { fg = p.pink },
    ['@markup.link.url']          = { fg = p.cyan, underline = true },
    ['@markup.raw']               = { fg = p.green2 },
    ['@markup.raw.block']         = { fg = p.green2 },
    ['@markup.list']              = { fg = p.pink },
    ['@markup.list.checked']      = { fg = p.green2 },
    ['@markup.list.unchecked']    = { fg = p.fg_dim },

    -- diff
    ['@diff.plus']   = { fg = p.green },
    ['@diff.minus']  = { fg = p.red },
    ['@diff.delta']  = { fg = p.cyan },
  }
end
