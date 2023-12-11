return {
  "HakonHarnes/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  config = function()
    require("peek").setup({
      app = { "chromium", "--new-window" },
    })
    vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
    vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})

    vim.api.nvim_set_keymap("n", "<leader>cp", "<cmd>PeekOpen<CR>", { desc = "PeekOpen", noremap = true })
    vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>PeekClose<CR>", { desc = "PeekClose", noremap = true })
  end,
}
