return function(p, c)
  local groups = {
    DiffAdd    = { bg = "#002302" },
    -- Diffnge = { bg = p.green },
    DiffDelete = { bg = "#390102" },
  }

  if c.plugins.gitsigns then
    groups.GitSignsAdd      = { fg = p.green }
    groups.GitSignsChange   = { fg = p.cyan }
    groups.GitSignsDelete   = { fg = p.red }
    groups.GitSignsAddNr    = { fg = p.green }
    groups.GitSignsChangeNr = { fg = p.cyan }
    groups.GitSignsDeleteNr = { fg = p.red }
    groups.GitSignsAddLn    = { bg = p.diff_add_bg }
    groups.GitSignsChangeLn = { bg = p.diff_change_bg }
    groups.GitSignsDeleteLn = { bg = p.diff_delete_bg }
  end

  return groups
end
