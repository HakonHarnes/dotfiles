return {
  "folke/zen-mode.nvim",
  dependencies = {
    "b0o/incline.nvim",
  },
  cmd = "ZenMode",
  opts = {
    window = {
      backdrop = 1,
      width = 80,
      options = {
        number = false,
        relativenumber = false,
        cursorline = false,
      },
    },
    plugins = {
      gitsigns = true,
      twilight = false,
      tmux = true,
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  on_open = function(win)
    require("incline").disable()
  end,
  on_close = function()
    require("incline").enable()
  end,
}
