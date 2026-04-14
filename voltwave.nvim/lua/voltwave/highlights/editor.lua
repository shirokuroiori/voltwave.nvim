return function(p, c)
  local groups = {
    Normal          = { fg = p.fg,       bg = p.bg },
    NormalNC        = { fg = p.fg,       bg = p.bg_alt },
    NormalFloat     = { fg = p.fg,       bg = p.bg_float },
    FloatBorder     = { fg = p.purple_neon, bg = p.bg_float },
    FloatTitle      = { fg = p.green2,   bg = p.bg_float, bold = true },
    Cursor          = { fg = p.bg,       bg = p.green2 },
    CursorLine      = { bg = p.line_hl },
    CursorColumn    = { bg = p.line_hl },
    CursorLineNr    = { fg = p.green_bright, bg = p.line_hl, bold = true },
    LineNr          = { fg = p.line_nr, bg = p.bg },
    LineNrAbove     = { fg = p.line_nr, bg = p.bg },
    LineNrBelow     = { fg = p.line_nr, bg = p.bg },
    SignColumn      = { bg = p.bg },
    FoldColumn      = { fg = p.fg, bg = p.bg },
    Folded          = { fg = p.comment,  bg = p.surface, italic = true },
    ColorColumn     = { bg = p.bg_alt },
    Visual          = { bg = p.selection },
    VisualNOS       = { bg = p.selection },
    Search          = { fg = p.bg,       bg = p.green3 },
    CurSearch       = { fg = p.bg,       bg = p.green2, bold = true },
    IncSearch       = { fg = p.bg,       bg = p.orange, bold = true },
    Substitute      = { fg = p.bg,       bg = p.pink },
    MatchParen      = { fg = p.pink_neon, bold = true },
    NonText         = { fg = p.fg_dim },
    Whitespace      = { fg = p.surface },
    SpecialKey      = { fg = p.fg_dim },
    EndOfBuffer     = { fg = p.bg },
    Conceal         = { fg = p.fg_dim },
    WinSeparator    = { fg = p.win_separator, bg = p.bg_alt },
    StatusLine      = { fg = p.fg,       bg = p.bg_float },
    StatusLineNC    = { fg = p.fg_dim,   bg = p.bg_alt },
    TabLine         = { fg = p.fg_dim,   bg = p.bg_alt },
    TabLineFill     = { bg = p.bg },
    TabLineSel      = { fg = p.green2,   bg = p.bg_float, bold = true },
    WinBar          = { fg = p.fg,       bg = p.bg, bold = true },
    WinBarNC        = { fg = p.fg_dim,   bg = p.bg },
    Pmenu           = { fg = p.fg,       bg = p.bg_float },
    PmenuSel        = { fg = p.fg_bright, bg = p.surface, bold = true },
    PmenuKind       = { fg = p.cyan,     bg = p.bg_float },
    PmenuKindSel    = { fg = p.cyan,     bg = p.surface, bold = true },
    PmenuExtra      = { fg = p.fg_dim,   bg = p.bg_float },
    PmenuExtraSel   = { fg = p.fg_dim,   bg = p.surface },
    PmenuSbar       = { bg = p.bg_float },
    PmenuThumb      = { bg = p.surface },
    WildMenu        = { fg = p.bg,       bg = p.green2 },
    MsgArea         = { fg = p.fg,       bg = p.bg },
    MsgSeparator    = { fg = p.green,    bg = p.bg_float },
    ModeMsg         = { fg = p.green2,   bold = true },
    MoreMsg         = { fg = p.green2 },
    Question        = { fg = p.green2 },
    WarningMsg      = { fg = p.orange },
    ErrorMsg        = { fg = p.red,      bold = true },
    Title           = { fg = p.purple_neon, bold = true },
    Directory       = { fg = p.green2 },
    QuickFixLine    = { bg = p.surface,  bold = true },
    SpellBad        = { fg = p.red,      undercurl = true },
    SpellCap        = { fg = p.orange,   undercurl = true },
    SpellLocal      = { fg = p.cyan,     undercurl = true },
    SpellRare       = { fg = p.purple,   undercurl = true },
  }

  if c.transparent then
    local transparent_groups = {
      'Normal', 'NormalNC', 'NormalFloat', 'SignColumn',
      'LineNr', 'LineNrAbove', 'LineNrBelow', 'CursorLineNr',
      'FoldColumn', 'WinSeparator',
      'FloatBorder', 'FloatTitle',
      'StatusLine', 'StatusLineNC',
      'TabLine', 'TabLineFill', 'TabLineSel',
      'WinBar', 'WinBarNC',
      'MsgArea',
      'Pmenu', 'PmenuKind', 'PmenuExtra', 'PmenuSbar',
    }
    for _, name in ipairs(transparent_groups) do
      if groups[name] and not groups[name].link then
        groups[name].bg = nil
      end
    end
  end

  return groups
end
