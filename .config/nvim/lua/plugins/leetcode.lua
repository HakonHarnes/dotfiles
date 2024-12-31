return {
  "kawre/leetcode.nvim",
  branch = "feat-recent-cmd",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
    "b0o/incline.nvim",
  },
  lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
  config = function()
    require("leetcode").setup({
      lang = "python3",
      keys = {
        toggle = { "q" },
      },
    })

    vim.cmd("Copilot disable")
    vim.diagnostic.disable()
    vim.o.showtabline = 0
  end,
  keys = {
    { "<leader>lt", mode = { "n" }, "<cmd>Leet tabs<cr>" },
    { "<leader>lm", mode = { "n" }, "<cmd>Leet menu<cr>" },
    { "<leader>lc", mode = { "n" }, "<cmd>Leet console<cr>" },
    { "<leader>li", mode = { "n" }, "<cmd>Leet info<cr>" },
    { "<leader>ll", mode = { "n" }, "<cmd>Leet last_submit<cr>" },
    { "<leader>lL", mode = { "n" }, "<cmd>Leet lang<cr>" },
    { "<leader>ly", mode = { "n" }, "<cmd>Leet yank<cr>" },
    { "<leader>ld", mode = { "n" }, "<cmd>Leet desc<cr>" },
    { "<leader>lr", mode = { "n" }, "<cmd>Leet run<cr>" },
    { "<leader>ls", mode = { "n" }, "<cmd>Leet submit<cr>" },
    { "<leader>lo", mode = { "n" }, "<cmd>Leet open<cr>" },
    { "<leader>lh", mode = { "n" }, "<cmd>Leet hints<cr>" },
    { "<leader>lR", mode = { "n" }, "<cmd>Leet reset<cr>" },
  },
}
