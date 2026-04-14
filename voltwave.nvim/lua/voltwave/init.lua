local M = {}

function M.setup(opts)
  require('voltwave.config').setup(opts)
end

function M.load()
  -- 1. カラースキーム名を設定
  vim.g.colors_name = 'voltwave'

  -- 2. termguicolors を強制有効化
  vim.o.termguicolors = true

  -- 3. 既存ハイライトをリセット
  if vim.g.colors_name then
    vim.cmd('hi clear')
  end
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end
  vim.g.colors_name = 'voltwave'

  -- 4. palette と config を読み込む
  local p = require('voltwave.palette')
  local c = require('voltwave.config').options

  -- 5. 全ハイライトグループを集約
  local groups = require('voltwave.highlights').get(p, c)

  -- 6. italic / bold / transparent の後処理
  -- italic.comments が false → @comment / Comment の italic を除去
  if not c.italic.comments then
    for name, spec in pairs(groups) do
      if name == 'Comment'
        or name == '@comment'
        or name == '@comment.documentation'
        or name == '@string.documentation' then
        if not spec.link then
          spec.italic = nil
        end
      end
    end
  end

  -- italic.types が false → Type / @type 系の italic を除去
  if not c.italic.types then
    local type_groups = {
      'Type', 'Typedef', '@type', '@type.builtin', '@type.definition',
      '@module', '@lsp.type.typeParameter',
    }
    for _, name in ipairs(type_groups) do
      if groups[name] and not groups[name].link then
        groups[name].italic = nil
      end
    end
  end

  -- italic.parameters が false → @variable.parameter 系の italic を除去
  if not c.italic.parameters then
    local param_groups = { '@variable.parameter', '@lsp.type.parameter' }
    for _, name in ipairs(param_groups) do
      if groups[name] and not groups[name].link then
        groups[name].italic = nil
      end
    end
  end

  -- italic.keywords が false → @keyword.* / Keyword 系の italic を除去
  if not c.italic.keywords then
    for name, spec in pairs(groups) do
      if (name:match('^@keyword') or name == 'Keyword' or name == 'Include' or name == 'StorageClass')
        and not spec.link then
        spec.italic = nil
      end
    end
  end

  -- italic.functions が false → @function.* の italic を除去
  if not c.italic.functions then
    for name, spec in pairs(groups) do
      if name:match('^@function') and not spec.link then
        spec.italic = nil
      end
    end
  end

  -- bold.functions が false → Function/@function の bold を除去
  -- ただし常に bold 固定の4グループは除外する
  local always_bold_functions = {
    ['@function'] = true, ['@function.call'] = true,
    ['@function.method'] = true, ['@function.method.call'] = true,
  }
  if not c.bold.functions then
    for name, spec in pairs(groups) do
      if (name == 'Function' or name:match('^@function'))
        and not spec.link
        and not always_bold_functions[name] then
        spec.bold = nil
      end
    end
  end

  -- bold.keywords が false → Keyword/@keyword の bold を除去 (return は保持)
  if not c.bold.keywords then
    for name, spec in pairs(groups) do
      if (name == 'Keyword' or name == 'Statement' or name == 'Conditional'
        or name == 'Repeat' or name:match('^@keyword'))
        and name ~= '@keyword.return'
        and not spec.link then
        spec.bold = nil
      end
    end
  end

  -- 7. ユーザーオーバーライドを最後にマージ
  if c.overrides and next(c.overrides) then
    groups = vim.tbl_extend('force', groups, c.overrides)
  end

  -- 8. 一括適用
  require('voltwave.util').apply(groups)

  -- bufferline の DevIcon 個別グループ（BufferLineDevIconpy 等）の bg を統一する
  -- nvim-web-devicons の動的生成グループに対応するため、ColorScheme イベントで再適用
  local group = vim.api.nvim_create_augroup('VoltwaveBufferlineDevIcons', { clear = true })
  vim.api.nvim_create_autocmd({ 'ColorScheme', 'VimEnter', 'BufAdd', 'BufNew' }, {
    group = group,
    callback = function()
      local palette = require('voltwave.palette')
      local hls = vim.api.nvim_get_hl(0, {})
      for name, _ in pairs(hls) do
        if name:match('^BufferLineDevIcon') then
          local existing = vim.api.nvim_get_hl(0, { name = name, link = false })
          local fg = existing.fg

          if name:match('Selected$') then
            vim.api.nvim_set_hl(0, name, { fg = fg, bg = tonumber(palette.bg:sub(2), 16) })
          elseif name:match('Inactive$') then
            vim.api.nvim_set_hl(0, name, { fg = fg, bg = tonumber(palette.bg_alt:sub(2), 16) })
          else
            vim.api.nvim_set_hl(0, name, { fg = fg, bg = tonumber(palette.bg_alt:sub(2), 16) })
          end
        end
      end
    end,
  })
end

return M
