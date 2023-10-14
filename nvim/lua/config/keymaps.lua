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

-- lazy
map("n", "<leader>lz", "<cmd>:Lazy<cr>", { desc = "Lazy" })
map("n", "<leader>l", "<nop>", { desc = "Lazy" })

-- insert empty lines
map("n", "<leader>o", "o<esc>", { desc = "Insert empty line below" })
map("n", "<leader>O", "O<esc>", { desc = "Insert empty line above" })
