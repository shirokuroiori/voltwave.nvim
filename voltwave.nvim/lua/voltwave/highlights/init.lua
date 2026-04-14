local M = {}

function M.get(p, c)
  local groups = {}

  local modules = {
    require('voltwave.highlights.editor'),
    require('voltwave.highlights.syntax'),
    require('voltwave.highlights.treesitter'),
    require('voltwave.highlights.lsp'),
    require('voltwave.highlights.diagnostic'),
    require('voltwave.highlights.git'),
    require('voltwave.highlights.plugins'),
  }

  for _, mod in ipairs(modules) do
    groups = vim.tbl_extend('force', groups, mod(p, c))
  end

  return groups
end

return M
