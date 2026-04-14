local M = {}

function M.get()
  local p = require('voltwave.palette')

  local colors = {
    bg           = p.bg,
    bg_alt       = p.bg_alt,
    bg_float     = p.bg_float,
    fg           = p.fg,
    fg_dim       = p.fg_dim,
    normal_mode  = p.purple_neon, -- NORMAL は緑（主役色）
    insert_mode  = p.green,       -- INSERT は一段濃い緑
    visual_mode  = p.orange,      -- VISUAL はオレンジ
    replace_mode = p.red,
    command_mode = p.cyan,        -- COMMAND は黄色
    inactive     = p.fg_dim,
  }

  return {
    normal = {
      a = { bg = colors.normal_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.normal_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    insert = {
      a = { bg = colors.insert_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.insert_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    visual = {
      a = { bg = colors.visual_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.visual_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    replace = {
      a = { bg = colors.replace_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.replace_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    command = {
      a = { bg = colors.command_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.command_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    terminal = {
      a = { bg = colors.normal_mode, fg = p.bg, gui = 'bold' },
      b = { bg = p.surface, fg = colors.normal_mode },
      c = { bg = p.bg_float, fg = colors.fg },
    },
    inactive = {
      a = { bg = p.bg_alt, fg = colors.inactive, gui = 'bold' },
      b = { bg = p.bg_alt, fg = colors.inactive },
      c = { bg = p.bg_alt, fg = colors.inactive },
    },
  }
end

return M
