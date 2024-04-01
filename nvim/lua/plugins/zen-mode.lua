return {
  "HakonHarnes/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      backdrop = 1,
      options = {
        number = false,
        relativenumber = false,
        cursorline = false,
      },
    },
    plugins = {
      options = {
        laststatus = 0,
      },
      kitty = {
        enabled = false,
        font = "+4",
      },
      gitsigns = true,
      twilight = false,
      tmux = false,
    },
    on_open = function()
      require("incline").disable()
      require("mini.indentscope").config.symbol = ""
      vim.cmd("IBLDisable")
    end,
    on_close = function()
      require("incline").enable()
      require("mini.indentscope").config.symbol = "│"
      vim.cmd("IBLEnable")
    end,
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
