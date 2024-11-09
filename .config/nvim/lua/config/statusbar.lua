vim.opt.laststatus = 0
vim.opt.statusline = " "

vim.api.nvim_set_hl(0, "StatusLine", { bg = nil, fg = nil })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = nil, fg = nil })

local function update_laststatus_for_horizontal_splits()
  local height_threshold = vim.o.lines - 5
  local is_horizontal_split = false

  local windows = vim.api.nvim_tabpage_list_wins(0)

  if #windows > 1 then
    for _, win in ipairs(windows) do
      local win_height = vim.api.nvim_win_get_height(win)
      if win_height > 10 and win_height < height_threshold then
        is_horizontal_split = true
        break
      end
    end
  end

  if is_horizontal_split then
    vim.opt.laststatus = 3
  else
    vim.opt.laststatus = 0
  end
end

vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "BufWinEnter", "WinLeave", "VimResized" }, {
  callback = update_laststatus_for_horizontal_splits,
})
