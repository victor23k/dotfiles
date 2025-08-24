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
    M.map('i', 'jk', '<Esc>', { noremap = true, silent = true }) -- remap jk to escape insert mode
    M.map('v', '<leader>p', '\"_dP')
  end

  vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")
  vim.keymap.set("n", "<leader>ou", ":Gtu<CR>", { desc = "[O]pen [U]rl" } )
  vim.keymap.set("n", "<space>x", ":.lua<CR>")
  vim.keymap.set("v", "<space>x", ":lua<CR>")
  vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

return M
