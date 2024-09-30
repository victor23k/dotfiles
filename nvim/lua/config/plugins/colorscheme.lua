local kanagawa = {
  "rebelot/kanagawa.nvim",
  config = function()
    require('kanagawa').setup({
      transparent = true
    })

    vim.cmd([[colorscheme kanagawa-wave]])
  end,
}

local oxocarbon = {
  "nyoom-engineering/oxocarbon.nvim",
  config = function()
    vim.cmd([[colorscheme oxocarbon]])
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}

return {
  kanagawa,
}
