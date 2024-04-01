return {
  "HakonHarnes/img-clip.nvim",
  event = "BufEnter",
  keys = {
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste clipboard image" },
    -- Oil integration
    {
      "<leader>i",
      function()
        local oil = require("oil")
        local filename = oil.get_cursor_entry().name
        local dir = oil.get_current_dir()
        oil.close()

        local img_clip = require("img-clip")
        img_clip.paste_image({}, dir .. filename)
      end,
      desc = "Paste clipboard image",
    },
    -- telescope integration
    {
      "<leader>a",
      function()
        local telescope = require("telescope.builtin")
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")

        telescope.find_files({
          attach_mappings = function(_, map)
            local function embed_image(prompt_bufnr)
              local entry = action_state.get_selected_entry()
              local filepath = entry[1]
              actions.close(prompt_bufnr)

              local img_clip = require("img-clip")
              img_clip.paste_image(nil, filepath)
            end

            map("i", "<CR>", embed_image)
            map("n", "<CR>", embed_image)

            return true
          end,
        })
      end,
    },
  },
}
