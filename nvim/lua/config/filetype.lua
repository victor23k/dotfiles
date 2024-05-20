local M = {}

function M.fileype()
  vim.filetype.add({
    extension = { mdx = 'mdx'},
    filename = {
      ['.megascriptrc'] = 'json'
    },
    pattern = {
      ['.*rc$'] = 'json',
    },
  })
end
return M
