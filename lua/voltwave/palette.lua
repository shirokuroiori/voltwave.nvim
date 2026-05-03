local M          = {}

M.bg             = '#200933' -- fluoromachine glow on の背景
M.bg_alt         = '#241B2F' -- fluoromachine bgdark
M.bg_float       = '#200933'
M.surface        = '#4F326A'

M.fg_dim         = '#6B7A8F'
M.fg             = '#EDEDED' -- fluoromachine fg
M.fg_bright      = '#F8F8F8' -- fluoromachine white

M.comment        = '#495495' -- fluoromachine comment
M.selection      = '#463465' -- fluoromachine selection
M.line_hl        = '#2D1745'
M.line_nr        = '#57367c' -- fluoromachine LineNr fg
M.win_separator  = '#8c57c7' -- fluoromachine WinSeparator fg

M.green2         = '#72F1B8' -- fluoromachine green。アクセント・diff add
M.green3         = '#8EF4C6' -- fluoromachine bright green。マッチ・カーソル
M.green_bolt     = '#B6FF00' -- voltwave 稲妻色、ライム緑
M.green_bright   = '#1ed760' -- cursor line number 用の明るい緑

M.pink           = '#FF4DAD'
M.purple         = '#AF6DF9'
M.cyan           = '#4DEEFF'
M.green          = '#4DFFAD'
M.yellow         = '#FFE94D'
M.orange         = '#FF984D'
M.red            = '#FF4D4D'

M.info           = M.cyan
M.warn           = M.orange
M.error          = M.red
M.hint           = M.green

M.diff_add_bg    = '#002302'
M.diff_delete_bg = '#390102'

return M

