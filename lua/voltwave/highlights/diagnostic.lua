return function(p, c)
  local hint_color = c.bolt and p.green_bolt or p.green3

  return {
    DiagnosticError            = { fg = p.red },
    DiagnosticWarn             = { fg = p.orange },
    DiagnosticInfo             = { fg = p.cyan },
    DiagnosticHint             = { fg = hint_color },
    DiagnosticOk               = { fg = hint_color },

    DiagnosticVirtualTextError = { fg = p.red,    italic = true },
    DiagnosticVirtualTextWarn  = { fg = p.orange, italic = true },
    DiagnosticVirtualTextInfo  = { fg = p.cyan,   italic = true },
    DiagnosticVirtualTextHint  = { fg = hint_color, italic = true },

    DiagnosticUnderlineError   = { sp = p.red,    undercurl = true },
    DiagnosticUnderlineWarn    = { sp = p.orange, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = p.cyan,   undercurl = true },
    DiagnosticUnderlineHint    = { sp = hint_color, undercurl = true },

    DiagnosticSignError        = { fg = p.red },
    DiagnosticSignWarn         = { fg = p.orange },
    DiagnosticSignInfo         = { fg = p.cyan },
    DiagnosticSignHint         = { fg = hint_color },

    DiagnosticFloatingError    = { fg = p.red },
    DiagnosticFloatingWarn     = { fg = p.orange },
    DiagnosticFloatingInfo     = { fg = p.cyan },
    DiagnosticFloatingHint     = { fg = hint_color },

    DiagnosticDeprecated       = { fg = p.fg_dim, strikethrough = true },
    DiagnosticUnnecessary      = { fg = p.fg_dim },
  }
end
