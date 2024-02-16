return {
  'nvim-lualine/lualine.nvim',

  config = function ()
    local lualine = require('lualine')
    
    lualine.setup({
      sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {{'datetime', style = '%d/%m/%Y' },'location'}
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {}
        },
    })
    
  end,
}
