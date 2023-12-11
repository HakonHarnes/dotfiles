local Util = require("lazyvim.util")

return {
  {

    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
        file_ignore_patterns = { "node_modules", ".git", "assets" },
      },
    },
    keys = {
      { "<leader><space>", Util.telescope("fd", { cwd = false }), desc = "Find Files (cwd)" },
      { "<leader>/", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
      { "<leader>r", "<cmd>Telescope resume<cr>", desc = "Resume" },
      { "<leader>h", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
    },
  },
  {
    "nvim-telescope/telescope-bibtex.nvim",
    config = function()
      require("telescope").load_extension("bibtex")
    end,
  },
}
