return {
  "otavioschwanck/arrow.nvim",
  opts = {
    show_icons = true,
    leader_key = ";",
    hide_handbook = true,
    mappings = {
      edit = "e",
      delete_mode = "D",
      clear_all_items = "C",
      toggle = "s",
      open_vertical = "v",
      open_horizontal = "x",
      quit = "q",
      remove = "d",
    },

    window = {
      width = "auto",
      border = "single",
    },

    separate_save_and_remove = true,
  },
  keys = {
    {
      ";",
      function()
        require("arrow")
        require("arrow.ui").openMenu()
      end,
      desc = "Open arrow menu",
    },
    {
      "<c-n>",
      function()
        require("arrow")
        require("arrow.persist").next()
      end,
      desc = "Arrow next",
    },
    {
      "<c-p>",
      function()
        require("arrow")
        require("arrow.persist").previous()
      end,
      desc = "Arrow previous",
    },
    -- {
    --   "1",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(1)
    --   end,
    --   desc = "Arrow go to 1",
    -- },
    -- {
    --   "2",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(2)
    --   end,
    --   desc = "Arrow go to 2",
    -- },
    -- {
    --   "3",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(3)
    --   end,
    --   desc = "Arrow go to 3",
    -- },
    -- {
    --   "4",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(4)
    --   end,
    --   desc = "Arrow go to 4",
    -- },
    -- {
    --   "5",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(5)
    --   end,
    --   desc = "Arrow go to 5",
    -- },
    -- {
    --   "6",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(6)
    --   end,
    --   desc = "Arrow go to 6",
    -- },
    -- {
    --   "7",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(7)
    --   end,
    --   desc = "Arrow go to 7",
    -- },
    -- {
    --   "8",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(8)
    --   end,
    --   desc = "Arrow go to 8",
    -- },
    -- {
    --   "9",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(9)
    --   end,
    --   desc = "Arrow go to 9",
    -- },
    -- {
    --   "0",
    --   function()
    --     require("arrow")
    --     require("arrow.persist").go_to(10)
    --   end,
    --   desc = "Arrow go to 10",
    -- },
  },
}
