return function(p, c)
  return {
    DiagnosticError            = { fg = p.red },
    DiagnosticWarn             = { fg = p.orange },
    DiagnosticInfo             = { fg = p.cyan },
    DiagnosticHint             = { fg = p.green3 },
    DiagnosticOk               = { fg = p.green2 },

    DiagnosticVirtualTextError = { fg = p.red,    italic = true },
    DiagnosticVirtualTextWarn  = { fg = p.orange, italic = true },
    DiagnosticVirtualTextInfo  = { fg = p.cyan,   italic = true },
    DiagnosticVirtualTextHint  = { fg = p.green3, italic = true },

    DiagnosticUnderlineError   = { sp = p.red,    undercurl = true },
    DiagnosticUnderlineWarn    = { sp = p.orange, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = p.cyan,   undercurl = true },
    DiagnosticUnderlineHint    = { sp = p.green3, undercurl = true },

    DiagnosticSignError        = { fg = p.red },
    DiagnosticSignWarn         = { fg = p.orange },
    DiagnosticSignInfo         = { fg = p.cyan },
    DiagnosticSignHint         = { fg = p.green3 },

    DiagnosticFloatingError    = { fg = p.red },
    DiagnosticFloatingWarn     = { fg = p.orange },
    DiagnosticFloatingInfo     = { fg = p.cyan },
    DiagnosticFloatingHint     = { fg = p.green3 },

    DiagnosticDeprecated       = { fg = p.fg_dim, strikethrough = true },
    DiagnosticUnnecessary      = { fg = p.fg_dim },
  }
end
