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
      { "<leader>/", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
      { "<leader><space>", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
      { "<leader>G", Util.telescope("live_grep"), desc = "Find in Files (Grep)" },
      { "<leader>F", Util.telescope("files"), desc = "Find Files (root dir)" },
      { "<leader>r", "<cmd>Telescope resume<cr>", desc = "Resume" },
    },
  },
  {
    "nvim-telescope/telescope-bibtex.nvim",
    config = function()
      require("telescope").load_extension("bibtex")
    end,
  },
}
