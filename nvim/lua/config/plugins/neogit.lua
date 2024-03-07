local m = require("config.mappings")

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function ()
    require("neogit").setup({})
    m.map('n', '<Leader>gs', ':Neogit<CR>', { noremap = true, silent = true }) 	-- Neo[g]it [s]tatus 
  end
}
