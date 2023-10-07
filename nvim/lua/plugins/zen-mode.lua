return {
  "folke/zen-mode.nvim",
  cmd = "ZenMode",
  opts = {
    window = {
      backdrop = 1,
      width = 0.8,
      options = {
        number = false,
        relativenumber = false,
        cursorline = false,
      },
    },
    plugins = {
      gitsigns = true,
      twilight = false,
      tmux = false,
    },
  },
  keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
}
