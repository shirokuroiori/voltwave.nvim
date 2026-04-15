return function(p, c)
  local groups = {
    DiffAdd    = { fg = p.green_bright, bg = p.diff_add_bg },
    DiffChange = { fg = p.cyan, bg = p.diff_change_bg },
    DiffDelete = { fg = p.red, bg = p.diff_delete_bg },
    DiffText   = { fg = p.green2, bg = p.diff_text_bg },
  }

  if c.plugins.gitsigns then
    groups.GitSignsAdd      = { fg = p.green_bright }
    groups.GitSignsChange   = { fg = p.cyan }
    groups.GitSignsDelete   = { fg = p.red }
    groups.GitSignsAddNr    = { fg = p.green_bright }
    groups.GitSignsChangeNr = { fg = p.cyan }
    groups.GitSignsDeleteNr = { fg = p.red }
    groups.GitSignsAddLn    = { bg = p.diff_add_bg }
    groups.GitSignsChangeLn = { bg = p.diff_change_bg }
    groups.GitSignsDeleteLn = { bg = p.diff_delete_bg }
  end

  return groups
end
