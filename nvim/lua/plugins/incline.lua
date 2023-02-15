return {
  "b0o/incline.nvim",
  event = "BufReadPre",
  config = function()
    local colors = require("tokyonight.colors").setup()
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guibg = colors.orange, guifg = "#1A1B26" },
          InclineNormalNC = { guibg = "#1A1B26", guifg = "#1A1B26" },
        },
      },
      ignore = {
        floating_wins = true,
      },
      window = { margin = { vertical = 0, horizontal = 0 } },
    })
  end,
}
