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

-- copy/paste entire buffer
map("n", "<leader>Y", "<cmd>:%y+<cr>", { desc = "Copy entire buffer to clipboard" })
map("n", "<leader>P", ":silent! %delete _ | 0put +<CR>", { desc = "Replace entire buffer with clipboard content" })

-- vim-tmux-navigator
if os.getenv("TMUX") then
  map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
  map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
  map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
  map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
end

-- insert empty lines
map("n", "<leader>o", "o<esc>", { desc = "Insert empty line below" })
map("n", "<leader>O", "O<esc>", { desc = "Insert empty line above" })

-- typst
-- map("n", "<leader>tw", "<cmd>TypstWatch<cr>", { desc = "Typst watch." })

-- telescope harpoon
map("n", "<leader>h", "<cmd>Telescope harpoon marks<cr>", { desc = "Harpoon" })

-- bibtex
map("n", "<c-b>", "<cmd>Telescope bibtex<cr>", { desc = "Open bibtex entries" })
map("i", "<c-b>", "<cmd>Telescope bibtex<cr>", { desc = "Open bibtex entries" })

-- oil
map("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
map("n", "_", "<cmd>lua require('oil.actions').open_cwd.callback()<CR>", { desc = "Open current directory" })

-- LazyVim
map("n", "<leader>l", "<nop>", { desc = "Lazy" })
map("n", "<leader>lz", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- LazyDocker
map("n", "<leader>ld", function()
  Util.terminal({ "lazydocker" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazydocker (root dir)" })

map("n", "<leader>t", function()
  Util.terminal(
    { "sh", "-c", "make test; read -p '' -n1 -s" },
    { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }
  )
end, { desc = "Run tests" })
