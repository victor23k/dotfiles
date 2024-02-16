local M = {}
  -- Functional wrapper for mapping custom keybindings
  function M.map(mode, lhs, rhs, opts)
      local options = { noremap = true }
      if opts then
          options = vim.tbl_extend("force", options, opts)
      end
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
  
  function M.globalMappings()
    M.map('i', 'jk', '<Esc>', { noremap = true, silent = true })			-- remap jj to escape insert mode
    M.map('v', '<leader>p', '\"_dP') 
  end

return M
