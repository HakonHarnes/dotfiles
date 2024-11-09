return {
  "luckasRanarison/tailwind-tools.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    document_color = {
      enabled = false,
    },
  },
  keys = {
    { "<leader>ts", "<cmd>TailwindSort<cr>", desc = "Tailwind sort" },
    { "<leader>tc", "<cmd>TailwindConcealToggle<cr>", desc = "Tailwind conceal toggle" },
  },
}
