return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      cleanup_delay_ms = 0,

      progress = {
        border = "single",
      },

      view_options = {
        is_hidden_file = function(name, bufnr)
          return vim.startswith(name, ".")
            or vim.endswith(name, ".pdf")
            or name == "__pycache__"
            or name == "node_modules"
            or name == "venv"
            or name == "dist"
        end,
      },

      keymaps = {
        ["<C-x>"] = '<cmd>lua require("oil").select({ horizontal = true, close = true })<cr>',
        ["<C-v>"] = '<cmd>lua require("oil").select({ vertical = true, close = true })<cr>',
        ["g-"] = '<cmd>lua require("oil").select({ horizontal = true, close = true })<cr>',
        ["g|"] = '<cmd>lua require("oil").select({ vertical = true, close = true })<cr>',
        ["gt"] = '<cmd>lua require("oil").select({ tab = true, close = true })<cr>',
        ["gd"] = "actions.cd",
      },
    })
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
