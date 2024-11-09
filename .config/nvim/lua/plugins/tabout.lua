return {
  "abecodes/tabout.nvim", -- Tab out from parenthesis, quotes, brackets...
  opts = {
    tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
    completion = true, -- We use tab for completion so set this to true
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "L3MON4D3/LuaSnip",
    "hrsh7th/nvim-cmp",
  },
}
