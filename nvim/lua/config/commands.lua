-- Create a command to clear the LspLog
vim.api.nvim_create_user_command("LspLogClear", function()
  local lsplogpath = vim.fn.stdpath("state") .. "/lsp.log"
  print(lsplogpath)
  if io.close(io.open(lsplogpath, "w+b")) == false then vim.notify("Clearning LSP Log failed.", vim.log.levels.WARN) end
end, { nargs = 0 })


vim.api.nvim_create_user_command("Gtu",
  function()
    local curr_win = vim.api.nvim_get_current_win()
    local cursor_col = vim.api.nvim_win_get_cursor(curr_win)[2]
    local line = vim.api.nvim_get_current_line()
    local http_re = vim.regex(
      [[https\?://\(www\.\)\?[-a-zA-Z0-9@:%._+~#=]\{1,256}\.[a-zA-Z0-9()]\{1,6}\([-a-zA-Z0-9()@:%_+.~#?&/=]*\)\([-a-zA-Z0-9(@:%_+~#?&/=]\)]]
    )
    local m_start, m_end = http_re:match_str(line)

    if not m_start or cursor_col < m_start then
      return
    end

    while m_start and (cursor_col < m_start or cursor_col > m_end) do
      line = string.sub(line, m_end)
      cursor_col = cursor_col - m_end
      m_start, m_end = http_re:match_str(line)
    end

    if m_start then
      local url = string.sub(line, m_start + 1, m_end)
      local open_cmd = "xdg-open"
      if vim.uv.os_uname().sysname == "Darwin" then
        open_cmd = "open"
      end
      vim.system({ open_cmd, url }, { text = true })
    end
  end
  , { desc = "Opens the valid url under the cursor." })
