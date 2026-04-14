local M = {}

-- hex文字列をRGBに分解
local function hex_to_rgb(hex)
  hex = hex:gsub('^#', '')
  return
    tonumber(hex:sub(1, 2), 16),
    tonumber(hex:sub(3, 4), 16),
    tonumber(hex:sub(5, 6), 16)
end

-- 2つのhex色をアルファ値でブレンドする (fg を bg に alpha の割合で重ねる)
function M.blend(fg, bg, alpha)
  local fr, fg_, fb = hex_to_rgb(fg)
  local br, bg_, bb = hex_to_rgb(bg)
  local r = math.floor(fr * alpha + br * (1 - alpha) + 0.5)
  local g = math.floor(fg_ * alpha + bg_ * (1 - alpha) + 0.5)
  local b = math.floor(fb * alpha + bb * (1 - alpha) + 0.5)
  return string.format('#%02x%02x%02x', r, g, b)
end

-- ハイライトグループを一括適用する
function M.apply(groups)
  for name, spec in pairs(groups) do
    if spec.link then
      vim.api.nvim_set_hl(0, name, { link = spec.link })
    else
      local hl = {}
      if spec.fg   then hl.fg        = spec.fg   end
      if spec.bg   then hl.bg        = spec.bg   end
      if spec.sp   then hl.sp        = spec.sp   end
      if spec.bold        then hl.bold        = true end
      if spec.italic      then hl.italic      = true end
      if spec.underline   then hl.underline   = true end
      if spec.undercurl   then hl.undercurl   = true end
      if spec.underdouble then hl.underdouble = true end
      if spec.strikethrough then hl.strikethrough = true end
      if spec.reverse     then hl.reverse     = true end
      vim.api.nvim_set_hl(0, name, hl)
    end
  end
end

return M
