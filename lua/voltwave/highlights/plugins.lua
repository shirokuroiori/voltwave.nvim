return function(p, c)
  local groups = {}

  -- nvim-cmp
  if c.plugins.cmp then
    local cmp = {
      CmpItemAbbr             = { fg = p.fg },
      CmpItemAbbrDeprecated   = { fg = p.fg_dim, strikethrough = true },
      CmpItemAbbrMatch        = { fg = p.green, bold = true },
      CmpItemAbbrMatchFuzzy   = { fg = p.green, bold = true },
      CmpItemKind             = { fg = p.cyan },
      CmpItemMenu             = { fg = p.fg_dim, italic = true },
      CmpItemKindFunction     = { fg = p.green },
      CmpItemKindMethod       = { fg = p.green },
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
      TelescopePromptNormal   = { fg = p.fg_bright, bg = p.bg_float },
      TelescopePromptBorder   = { fg = p.green,    bg = p.bg_float },
      TelescopePromptTitle    = { fg = p.bg,        bg = p.green, bold = true },
      TelescopePromptPrefix   = { fg = p.green,    bg = p.bg_float },
      TelescopeResultsNormal  = { fg = p.fg,       bg = p.bg_float },
      TelescopeResultsBorder  = { fg = p.green,    bg = p.bg_float },
      TelescopeResultsTitle   = { fg = p.green,   bg = p.bg_float },
      TelescopePreviewNormal  = { fg = p.fg,       bg = p.bg_float },
      TelescopePreviewBorder  = { fg = p.green,    bg = p.bg_float },
      TelescopePreviewTitle   = { fg = p.bg,       bg = p.green, bold = true },
      TelescopeSelection      = { fg = p.fg_bright, bg = p.surface },
      TelescopeSelectionCaret = { fg = p.green,   bg = p.surface },
      TelescopeMatching       = { fg = p.green,   bold = true },
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
      NeoTreeRootName        = { fg = p.green, bold = true },
      NeoTreeFileName        = { fg = p.fg },
      NeoTreeFileNameOpened  = { fg = p.green },
      NeoTreeIndentMarker    = { fg = p.fg_dim },
      NeoTreeGitModified     = { fg = p.cyan },
      NeoTreeGitUnstaged     = { fg = p.cyan },
      NeoTreeGitStaged       = { fg = p.cyan },
      NeoTreeGitAdded        = { fg = p.green },
      NeoTreeGitDeleted      = { fg = p.red },
      NeoTreeGitUntracked    = { fg = p.green },
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
      BufferLineBufferSelected   = { fg = p.green,  bg = p.bg, bold = true },
      BufferLineIndicatorSelected = { fg = p.green,  bg = p.bg },
      BufferLineSeparator        = { fg = p.bg,      bg = p.bg_alt },
      BufferLineSeparatorSelected = { fg = p.bg,     bg = p.bg },
      BufferLineModified         = { fg = p.orange,  bg = p.bg_alt },
      BufferLineModifiedSelected = { fg = p.orange,  bg = p.bg },

      BufferLineCloseButton                = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineCloseButtonVisible         = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineCloseButtonSelected        = { fg = p.red,       bg = p.bg },

      BufferLineDevIconDefault             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineDevIconDefaultSelected     = { fg = p.green,    bg = p.bg },
      BufferLineDevIconDefaultInactive     = { fg = p.fg_dim,    bg = p.bg_alt },

      BufferLineDuplicate                  = { fg = p.fg_dim,    bg = p.bg_alt, italic = true },
      BufferLineDuplicateVisible           = { fg = p.fg_dim,    bg = p.bg_alt, italic = true },
      BufferLineDuplicateSelected          = { fg = p.green,    bg = p.bg,     italic = true },

      BufferLineNumbers                    = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineNumbersVisible             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineNumbersSelected            = { fg = p.green,    bg = p.bg,     bold = true },

      BufferLinePick                       = { fg = p.pink, bg = p.bg_alt, bold = true },
      BufferLinePickVisible                = { fg = p.pink, bg = p.bg_alt, bold = true },
      BufferLinePickSelected               = { fg = p.pink, bg = p.bg,     bold = true },

      BufferLineTab                        = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineTabSelected                = { fg = p.green,    bg = p.bg },
      BufferLineTabClose                   = { fg = p.red,       bg = p.bg_alt },

      BufferLineIndicatorVisible           = { fg = p.bg_alt,    bg = p.bg_alt },
      BufferLineSeparatorVisible           = { fg = p.bg,        bg = p.bg_alt },

      BufferLineTrunkMarker                = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineGroupSeparator             = { fg = p.fg_dim,    bg = p.bg_alt },
      BufferLineGroupLabel                 = { fg = p.green,    bg = p.bg_alt, bold = true },
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
      -- NeoTreeIndentMarker と同じトーンに揃える
      IblIndent                         = { fg = p.fg_dim },
      IblWhitespace                     = { fg = p.fg_dim },
      IblScope                          = { fg = p.purple },
      IndentBlanklineChar               = { fg = p.fg_dim },
      IndentBlanklineSpaceChar          = { fg = p.fg_dim },
      IndentBlanklineSpaceCharBlankline = { fg = p.fg_dim },
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
    if c.transparent then
      local notify_groups = {
        'NotifyERRORBorder', 'NotifyWARNBorder', 'NotifyINFOBorder', 'NotifyDEBUGBorder', 'NotifyTRACEBorder',
        'NotifyERRORIcon',   'NotifyWARNIcon',   'NotifyINFOIcon',   'NotifyDEBUGIcon',   'NotifyTRACEIcon',
        'NotifyERRORTitle',  'NotifyWARNTitle',  'NotifyINFOTitle',  'NotifyDEBUGTitle',  'NotifyTRACETitle',
        'NotifyERRORBody',   'NotifyWARNBody',   'NotifyINFOBody',   'NotifyDEBUGBody',   'NotifyTRACEBody',
      }
      for _, name in ipairs(notify_groups) do
        if notify[name] then notify[name].bg = nil end
      end
    end
    groups = vim.tbl_extend('force', groups, notify)
  end

  -- render-markdown.nvim
  if c.plugins.render_markdown then
    local blend = require('voltwave.util').blend
    local rm_colors = { p.purple, p.cyan, p.green, p.green_bolt, p.yellow, p.orange }
    local rm = {}
    for i, color in ipairs(rm_colors) do
      rm['RenderMarkdownH' .. i]         = { fg = color, bold = true }
      rm['RenderMarkdownH' .. i .. 'Bg'] = { fg = color, bg = blend(color, p.bg, 0.12) }
    end
    groups = vim.tbl_extend('force', groups, rm)
  end

  -- rainbow-delimiters.nvim
  if c.plugins.rainbow_delimiters then
    groups = vim.tbl_extend('force', groups, {
      RainbowDelimiterRed    = { fg = p.yellow },
      RainbowDelimiterYellow = { fg = p.orange },
      RainbowDelimiterBlue   = { fg = p.blue },
      RainbowDelimiterOrange = { fg = p.yellow },
      RainbowDelimiterGreen  = { fg = p.orange },
      RainbowDelimiterViolet = { fg = p.blue },
      RainbowDelimiterCyan   = { fg = p.yellow },
    })
  end

  -- lazygit
  if c.plugins.lazygit then
    groups = vim.tbl_extend('force', groups, {
      LazyGitBorder = { fg = p.cyan },
    })
  end

  -- which-key
  if c.plugins.which_key then
    local wk = {
      WhichKeyDesc = { fg = p.cyan },
    }
    groups = vim.tbl_extend('force', groups, wk)
  end

  return groups
end
