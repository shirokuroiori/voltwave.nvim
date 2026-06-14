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

local function rgb_to_hsl(r, g, b)
  r, g, b = r / 255, g / 255, b / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local l = (max + min) / 2
  local h, s = 0, 0
  if max ~= min then
    local d = max - min
    s = l > 0.5 and d / (2 - max - min) or d / (max + min)
    if max == r then
      h = (g - b) / d + (g < b and 6 or 0)
    elseif max == g then
      h = (b - r) / d + 2
    else
      h = (r - g) / d + 4
    end
    h = h / 6
  end
  return h, s, l
end

local function hue_to_rgb(p_, q_, t)
  if t < 0 then t = t + 1 end
  if t > 1 then t = t - 1 end
  if t < 1/6 then return p_ + (q_ - p_) * 6 * t end
  if t < 1/2 then return q_ end
  if t < 2/3 then return p_ + (q_ - p_) * (2/3 - t) * 6 end
  return p_
end

local function hsl_to_hex(h, s, l)
  local nr, ng, nb
  if s == 0 then
    nr, ng, nb = l, l, l
  else
    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q
    nr = hue_to_rgb(p, q, h + 1/3)
    ng = hue_to_rgb(p, q, h)
    nb = hue_to_rgb(p, q, h - 1/3)
  end
  return string.format('#%02x%02x%02x',
    math.floor(nr * 255 + 0.5),
    math.floor(ng * 255 + 0.5),
    math.floor(nb * 255 + 0.5))
end

-- hex色の彩度を amount (0.0〜1.0) の割合だけ下げる (HSL ベース、明度は維持)
function M.desaturate(hex, amount)
  local r, g, b = hex_to_rgb(hex)
  local h, s, l = rgb_to_hsl(r, g, b)
  return hsl_to_hex(h, s * (1 - amount), l)
end

-- hex色の明度を amount (0.0〜1.0) の割合だけ下げる (HSL ベース、彩度は維持)
function M.darken(hex, amount)
  local r, g, b = hex_to_rgb(hex)
  local h, s, l = rgb_to_hsl(r, g, b)
  return hsl_to_hex(h, s, l * (1 - amount))
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
