local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- enter normal mode with jk
map("i", "jk", "<esc>", { desc = "Enter normal mode" })

-- quit
map("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all" })

-- lazy
map("n", "<leader>lz", "<cmd>:Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>l", "<nop>", { desc = "Lazy" })

-- insert empty lines
map("n", "<leader>o", "o<esc>", { desc = "Insert empty line below" })
map("n", "<leader>O", "O<esc>", { desc = "Insert empty line above" })

-- toggle options
map("n", "<leader>tf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })
map("n", "<leader>ts", function()
  Util.toggle("spell")
end, { desc = "Toggle Spelling" })
map("n", "<leader>tw", function()
  Util.toggle("wrap")
end, { desc = "Toggle Word Wrap" })
map("n", "<leader>tl", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })
map("n", "<leader>td", Util.toggle_diagnostics, { desc = "Toggle Diagnostics" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>tc", function()
  Util.toggle("conceallevel", false, { 0, conceallevel })
end, { desc = "Toggle Conceal" })
