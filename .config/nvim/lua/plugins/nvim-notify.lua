return {
  "rcarriga/nvim-notify",
  opts = {
    stages = "static",
    fps = 0,
    on_open = function(win)
      if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_set_config(win, { border = "single" })
      end
    end,
  },
}
