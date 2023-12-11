-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.dev")

local augroup = vim.api.nvim_create_augroup("AutoSaveTex", { clear = true })
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  group = augroup,
  pattern = "*.tex",
  command = "silent! update",
})
