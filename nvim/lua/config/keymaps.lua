local Util = require("lazyvim.util")

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Resize window using <ctrl> <alt> hjkl keys
map("n", "<C-A-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-A-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-A-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-A-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- quit
map("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all" })

-- lazy
map("n", "<leader>lz", "<cmd>:Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>l", "<nop>", { desc = "Lazy" })

-- Twilight
map("n", "<leader>tt", "<cmd>:Twilight<cr>", { desc = "Toggle twilight" })

-- Clear highlight
map(
  "n",
  "<leader>h",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / clear hlsearch / diff update" }
)

-- Insert empty lines
map("n", "<leader>o", "o<esc>", { desc = "Insert empty line below" })
map("n", "<leader>O", "O<esc>", { desc = "Insert empty line above" })

-- Enter normal mode with jk
map("i", "jk", "<esc>", { desc = "Enter normal mode" })

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
