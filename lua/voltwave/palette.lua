local M          = {}

-- 背景層（暗→明の4段階・fluoromachine 紫系）
M.bg             = '#200933' -- fluoromachine glow on の背景
M.bg_alt         = '#241B2F' -- fluoromachine bgdark
M.bg_float       = '#2A1340'
M.surface        = '#34204A'

-- 前景層（fluoromachine オリジナル）
M.fg_dim         = '#6B7A8F'
M.fg             = '#A0D8D8' -- fluoromachine fg
M.fg_bright      = '#F8F8F8' -- fluoromachine white

-- muted / selection
M.comment        = '#495495' -- fluoromachine comment
M.selection      = '#463465' -- fluoromachine selection
M.line_hl        = '#2D1745'
M.line_nr        = '#57367c' -- fluoromachine LineNr fg
M.win_separator  = '#8c57c7' -- fluoromachine WinSeparator fg

-- 緑（3段階）
M.green          = '#50fa7b' -- 関数・主役
M.green2         = '#72F1B8' -- fluoromachine green。アクセント・diff add
M.green3         = '#8EF4C6' -- fluoromachine bright green。マッチ・カーソル
M.green_bolt     = '#B6FF00' -- voltwave 稲妻色、ライム緑
M.green_bright   = '#1ed760' -- cursor line number 用の明るい緑

-- アクセント（fluoromachine オリジナル）
M.pink           = '#FC199A'
M.purple         = '#AF6DF9'
M.cyan           = '#38daff'
-- M.cyan           = '#4DEEFF'
M.yellow         = '#FFCC00'
M.orange         = '#FF8B39'
M.red            = '#FE4450'

-- 旧名エイリアス（既存コードからの参照を壊さないため）
M.pink_neon      = M.pink
M.purple_neon    = M.purple

-- 意味的エイリアス
M.info           = M.cyan
M.warn           = M.orange
M.error          = M.red
M.hint           = M.green3

-- diff 用の blend 済み背景
M.diff_add_bg    = '#1a2818'
M.diff_change_bg = '#1a1f2c'
M.diff_delete_bg = '#2c1a1a'
M.diff_text_bg   = '#22381e'

return M
