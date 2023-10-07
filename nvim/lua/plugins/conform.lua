return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      python = { "black" },
      sh = { "shfmt" },
    },
  },
}
