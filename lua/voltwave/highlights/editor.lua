return function(p, c)
  local groups = {
    Normal          = { fg = p.fg,       bg = p.bg },
    NormalNC        = { fg = p.fg,       bg = p.bg },
    NormalFloat     = { fg = p.fg,       bg = p.bg_float },
    FloatBorder     = { fg = p.purple, bg = p.bg_float },
    FloatTitle      = { fg = p.green,   bg = p.bg_float, bold = true },
    Cursor          = { fg = p.bg,       bg = p.green_bolt },
    CursorLine      = { bg = p.line_hl },
    CursorColumn    = { bg = p.line_hl },
    CursorLineNr    = { fg = p.green,   bold = true },
    LineNr          = { fg = p.line_nr, bg = p.bg },
    LineNrAbove     = { fg = p.line_nr, bg = p.bg },
    LineNrBelow     = { fg = p.line_nr, bg = p.bg },
    SignColumn      = { bg = p.bg },
    FoldColumn      = { fg = p.fg, bg = p.bg },
    Folded          = { fg = p.comment,  bg = p.surface, italic = true },
    ColorColumn     = { bg = p.bg_alt },
    Visual          = { bg = p.selection },
    VisualNOS       = { bg = p.selection },
    Search          = { fg = p.green_bolt,      bg = p.surface },
    CurSearch       = { fg = p.bg,              bg = p.green_bolt, bold = true },
    IncSearch       = { fg = p.bg,              bg = p.green_bolt, bold = true },
    Substitute      = { fg = p.bg,              bg = p.pink },
    MatchParen      = { fg = c.bolt and p.green_bolt or p.green, bold = true },
    NonText         = { fg = p.fg_dim },
    Whitespace      = { fg = p.surface },
    SpecialKey      = { fg = p.fg_dim },
    EndOfBuffer     = { fg = p.bg },
    Conceal         = { fg = p.fg_dim },
    WinSeparator    = { fg = p.cyan, bg = p.bg },
    StatusLine      = { fg = p.fg,       bg = p.bg_float },
    StatusLineNC    = { fg = p.fg_dim,   bg = p.bg_alt },
    TabLine         = { fg = p.fg_dim,   bg = p.bg_alt },
    TabLineFill     = { bg = p.bg },
    TabLineSel      = { fg = p.green,   bg = p.bg_float, bold = true },
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
    WildMenu        = { fg = p.bg,       bg = p.green },
    MsgArea         = { fg = p.fg,       bg = p.bg },
    MsgSeparator    = { fg = p.green,    bg = p.bg_float },
    ModeMsg         = { fg = p.green,   bold = true },
    MoreMsg         = { fg = p.green },
    Question        = { fg = p.green },
    WarningMsg      = { fg = p.orange },
    ErrorMsg        = { fg = p.red,      bold = true },
    Title           = { fg = p.purple, bold = true },
    Directory       = { fg = p.green },
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
