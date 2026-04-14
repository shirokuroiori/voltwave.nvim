return function(p, c)
  local groups = {}

  -- nvim-cmp
  if c.plugins.cmp then
    local cmp = {
      CmpItemAbbr             = { fg = p.fg },
      CmpItemAbbrDeprecated   = { fg = p.fg_dim, strikethrough = true },
      CmpItemAbbrMatch        = { fg = p.green2, bold = true },
      CmpItemAbbrMatchFuzzy   = { fg = p.green3, bold = true },
      CmpItemKind             = { fg = p.cyan },
      CmpItemMenu             = { fg = p.fg_dim, italic = true },
      CmpItemKindFunction     = { fg = p.green2 },
      CmpItemKindMethod       = { fg = p.green2 },
      CmpItemKindVariable     = { fg = p.fg },
      CmpItemKindKeyword      = { fg = p.pink },
      CmpItemKindClass        = { fg = p.cyan },
      CmpItemKindInterface    = { fg = p.cyan },
      CmpItemKindText         = { fg = p.yellow },
      CmpItemKindSnippet      = { fg = p.orange },
      CmpItemKindConstant     = { fg = p.purple },
      CmpItemKindProperty     = { fg = p.cyan },
      CmpItemKindField        = { fg = p.cyan },
    }
    groups = vim.tbl_extend('force', groups, cmp)
  end

  -- telescope
  if c.plugins.telescope then
    local tel = {
      TelescopeNormal         = { fg = p.fg,       bg = p.bg_float },
      TelescopeBorder         = { fg = p.green,    bg = p.bg_float },
      TelescopePromptNormal   = { fg = p.fg_bright, bg = p.surface },
      TelescopePromptBorder   = { fg = p.green2,   bg = p.surface },
      TelescopePromptTitle    = { fg = p.bg,       bg = p.green2, bold = true },
      TelescopePromptPrefix   = { fg = p.green2,   bg = p.surface },
      TelescopeResultsNormal  = { fg = p.fg,       bg = p.bg_float },
      TelescopeResultsBorder  = { fg = p.green,    bg = p.bg_float },
      TelescopeResultsTitle   = { fg = p.green2,   bg = p.bg_float },
      TelescopePreviewNormal  = { fg = p.fg,       bg = p.bg_float },
      TelescopePreviewBorder  = { fg = p.green,    bg = p.bg_float },
      TelescopePreviewTitle   = { fg = p.bg,       bg = p.green, bold = true },
      TelescopeSelection      = { fg = p.fg_bright, bg = p.surface },
      TelescopeSelectionCaret = { fg = p.green2,   bg = p.surface },
      TelescopeMatching       = { fg = p.green3,   bold = true },
    }
    groups = vim.tbl_extend('force', groups, tel)
  end

  -- neo-tree
  if c.plugins.neo_tree then
    local neo = {
      NeoTreeNormal          = { fg = p.fg,     bg = p.bg },
      NeoTreeNormalNC        = { fg = p.fg,     bg = p.bg },
      NeoTreeDirectoryName   = { fg = p.yellow },
      NeoTreeDirectoryIcon   = { fg = p.yellow },
      NeoTreeRootName        = { fg = p.green2, bold = true },
      NeoTreeFileName        = { fg = p.fg },
      NeoTreeFileNameOpened  = { fg = p.green2 },
      NeoTreeIndentMarker    = { fg = p.fg_dim },
      NeoTreeGitModified     = { fg = p.cyan },
      NeoTreeGitAdded        = { fg = p.green },
      NeoTreeGitDeleted      = { fg = p.red },
      NeoTreeGitUntracked    = { fg = p.green2 },
      NeoTreeGitIgnored      = { fg = p.fg_dim },
      NeoTreeGitConflict     = { fg = p.orange },
    }
    if c.transparent then
      neo.NeoTreeNormal.bg   = nil
      neo.NeoTreeNormalNC.bg = nil
    end
    groups = vim.tbl_extend('force', groups, neo)
  end

  -- bufferline
  if c.plugins.bufferline then
    local buf = {
      BufferLineFill             = { bg = p.bg },
      BufferLineBackground       = { fg = p.fg_dim,  bg = p.bg_alt },
      BufferLineBufferVisible    = { fg = p.fg,      bg = p.bg_alt },
      BufferLineBufferSelected   = { fg = p.green2,  bg = p.bg, bold = true },
      BufferLineIndicatorSelected = { fg = p.green,  bg = p.bg },
      BufferLineSeparator        = { fg = p.bg,      bg = p.bg_alt },
      BufferLineSeparatorSelected = { fg = p.bg,     bg = p.bg },
      BufferLineModified         = { fg = p.orange,  bg = p.bg_alt },
      BufferLineModifiedSelected = { fg = p.orange,  bg = p.bg },

      BufferLineCloseButton                = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineCloseButtonVisible         = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineCloseButtonSelected        = { fg = p.red,       bg = p.bg },

      BufferLineDevIconDefault             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineDevIconDefaultSelected     = { fg = p.green2,    bg = p.bg },
      BufferLineDevIconDefaultInactive     = { fg = p.fg_dim,    bg = p.bg_alt },

      BufferLineDuplicate                  = { fg = p.fg_dim,    bg = p.bg_alt, italic = true },
      BufferLineDuplicateVisible           = { fg = p.fg_dim,    bg = p.bg_alt, italic = true },
      BufferLineDuplicateSelected          = { fg = p.green2,    bg = p.bg,     italic = true },

      BufferLineNumbers                    = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineNumbersVisible             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineNumbersSelected            = { fg = p.green2,    bg = p.bg,     bold = true },

      BufferLinePick                       = { fg = p.pink_neon, bg = p.bg_alt, bold = true },
      BufferLinePickVisible                = { fg = p.pink_neon, bg = p.bg_alt, bold = true },
      BufferLinePickSelected               = { fg = p.pink_neon, bg = p.bg,     bold = true },

      BufferLineTab                        = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineTabSelected                = { fg = p.green2,    bg = p.bg },
      BufferLineTabClose                   = { fg = p.red,       bg = p.bg_alt },

      BufferLineIndicatorVisible           = { fg = p.bg_alt,    bg = p.bg_alt },
      BufferLineSeparatorVisible           = { fg = p.bg,        bg = p.bg_alt },

      BufferLineTrunkMarker                = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineGroupSeparator             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineGroupLabel                 = { fg = p.green2,    bg = p.bg_alt, bold = true },
    }
    if c.transparent then
      local buf_transparent = {
        'BufferLineFill', 'BufferLineBackground',
        'BufferLineBufferVisible', 'BufferLineBufferSelected',
        'BufferLineIndicatorSelected', 'BufferLineIndicatorVisible',
        'BufferLineSeparator', 'BufferLineSeparatorSelected', 'BufferLineSeparatorVisible',
        'BufferLineModified', 'BufferLineModifiedSelected',
        'BufferLineCloseButton', 'BufferLineCloseButtonVisible', 'BufferLineCloseButtonSelected',
        'BufferLineDevIconDefault', 'BufferLineDevIconDefaultSelected', 'BufferLineDevIconDefaultInactive',
        'BufferLineDuplicate', 'BufferLineDuplicateVisible', 'BufferLineDuplicateSelected',
        'BufferLineNumbers', 'BufferLineNumbersVisible', 'BufferLineNumbersSelected',
        'BufferLinePick', 'BufferLinePickVisible', 'BufferLinePickSelected',
        'BufferLineTab', 'BufferLineTabSelected', 'BufferLineTabClose',
        'BufferLineTrunkMarker', 'BufferLineGroupSeparator', 'BufferLineGroupLabel',
      }
      for _, name in ipairs(buf_transparent) do
        if buf[name] and not buf[name].link then
          buf[name].bg = nil
        end
      end
    end
    groups = vim.tbl_extend('force', groups, buf)
  end

  -- indent-blankline (ibl v3 + v2 互換)
  if c.plugins.indent_blankline then
    local ibl = {
      IblIndent                         = { fg = p.bg_alt },
      IblWhitespace                     = { fg = p.bg_alt },
      IblScope                          = { fg = p.purple },
      IndentBlanklineChar               = { fg = p.bg_alt },
      IndentBlanklineSpaceChar          = { fg = p.bg_alt },
      IndentBlanklineSpaceCharBlankline = { fg = p.bg_alt },
      IndentBlanklineContextChar        = { fg = p.purple },
      IndentBlanklineContextStart       = { sp = p.purple, underline = true },
    }
    groups = vim.tbl_extend('force', groups, ibl)
  end

  -- nvim-notify
  if c.plugins.notify then
    local notify = {
      NotifyBackground           = { bg = p.bg },
      NotifyERRORBorder          = { fg = p.red,    bg = p.bg },
      NotifyWARNBorder           = { fg = p.orange, bg = p.bg },
      NotifyINFOBorder           = { fg = p.cyan,   bg = p.bg },
      NotifyDEBUGBorder          = { fg = p.fg_dim, bg = p.bg },
      NotifyTRACEBorder          = { fg = p.purple, bg = p.bg },
      NotifyERRORIcon            = { fg = p.red,    bg = p.bg },
      NotifyWARNIcon             = { fg = p.orange, bg = p.bg },
      NotifyINFOIcon             = { fg = p.cyan,   bg = p.bg },
      NotifyDEBUGIcon            = { fg = p.fg_dim, bg = p.bg },
      NotifyTRACEIcon            = { fg = p.purple, bg = p.bg },
      NotifyERRORTitle           = { fg = p.red,    bg = p.bg, bold = true },
      NotifyWARNTitle            = { fg = p.orange, bg = p.bg, bold = true },
      NotifyINFOTitle            = { fg = p.cyan,   bg = p.bg, bold = true },
      NotifyDEBUGTitle           = { fg = p.fg_dim, bg = p.bg, bold = true },
      NotifyTRACETitle           = { fg = p.purple, bg = p.bg, bold = true },
      NotifyERRORBody            = { fg = p.fg,     bg = p.bg },
      NotifyWARNBody             = { fg = p.fg,     bg = p.bg },
      NotifyINFOBody             = { fg = p.fg,     bg = p.bg },
      NotifyDEBUGBody            = { fg = p.fg,     bg = p.bg },
      NotifyTRACEBody            = { fg = p.fg,     bg = p.bg },
    }
    groups = vim.tbl_extend('force', groups, notify)
  end

  return groups
end
