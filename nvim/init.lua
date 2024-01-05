package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

require("config.lazy")
require("config.dev")

-- local augroup = vim.api.nvim_create_augroup("AutoSaveTex", { clear = true })
-- vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
--   group = augroup,
--   pattern = "*.tex",
--   command = "silent! update",
-- })
