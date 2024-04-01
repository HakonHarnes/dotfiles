return {
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
    event = "VeryLazy",
    opts = function(_, opts)
      opts.sections.lualine_z = {}
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
    end,
  },
}
