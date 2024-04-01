return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        layout = {
          position = "right",
        },
        keymap = {
          jump_next = "<c-]>",
          jump_prev = "<c-[>",
          accept = "<cr>",
          refresh = "<c-r>",
          open = "<m-cr>",
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<c-l>",
          dismiss = "<c-h>",
          next = "<c-]>",
          prev = "<c-[>",
        },
      },
      filetypes = {
        typst = false,
      },
    })
  end,
  keys = {
    { "<leader>cd", "<cmd>Copilot disable<cr>", desc = "Disable copilot" },
    { "<leader>ce", "<cmd>Copilot enable<cr>", desc = "Enable copilot" },
    { "<leader>cp", "<cmd>Copilot panel<cr>", desc = "Open copilot panel" },
  },
}
