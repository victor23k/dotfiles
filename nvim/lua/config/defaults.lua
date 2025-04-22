local api = vim.api
local g = vim.g
local opt = vim.opt

local M = {}

function M.defaults()
  -- Set english as language
  api.nvim_exec2('language en_US.UTF-8', { output = true })
  --
  -- Remap leader and local leader to <Space>
  api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
  g.mapleader = " "
  g.maplocalleader = " "
  --
  opt.tabstop = 2
  opt.shiftwidth = 2
  opt.expandtab = true
  --
  opt.termguicolors = true -- Enable colors in terminal
  opt.textwidth = 80 --Set hard column limit
  opt.colorcolumn = "+1" --Set column guide
  opt.hlsearch = true --Set highlight on search
  opt.number = true --Make line numbers default
  opt.relativenumber = true --Make relative number default
  opt.mouse = "a" --Enable mouse mode
  opt.breakindent = true --Enable break indent
  opt.undofile = true --Save undo history
  opt.ignorecase = true --Case insensitive searching unless /C or capital in search
  opt.smartcase = true -- Smart case
  opt.updatetime = 250 --Decrease update time
  opt.signcolumn = "yes" -- Always show sign column
  opt.clipboard = "unnamedplus" -- Access system clipboard
  opt.splitright = true -- Vertical split opens new window to the right
  --
  -- Highlight on yank
  vim.cmd [[
    augroup YankHighlight
      autocmd!
      autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end
  ]]

end

return M
