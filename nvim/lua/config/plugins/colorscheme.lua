local kanagawa = {
  "rebelot/kanagawa.nvim",
  config = function()
    vim.cmd([[colorscheme kanagawa-wave]])
  end,
}

local tokyonight = {
  "folke/tokyonight.nvim",
  config = function ()
    vim.cmd([[colorscheme tokyonight]])
  end,
  lazy = false,
  priority = 1000,
  opts = {},
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
  tokyonight,
}
