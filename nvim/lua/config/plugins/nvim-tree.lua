local m = require("config.mappings")

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    
    -- disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- setup
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    m.map('n', '<Leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true }) 	-- Open file directory tree 
    m.map('n', '<Leader>B', ':NvimTreeFocus<CR>', { noremap = true, silent = true }) 	-- Focus file directory tree 
  end,
}
