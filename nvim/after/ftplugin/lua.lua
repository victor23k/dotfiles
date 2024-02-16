local bo = vim.bo

local M = {}

function M.setup()

  bo.tabstop = 2
  bo.shiftwidth = 2
  bo.expandtab = true

end

return M
