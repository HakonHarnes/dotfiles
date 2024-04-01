return {
  "aserowy/tmux.nvim",
  opts = {
    navigation = {
      enable_default_keybindings = false,
    },
    resize = {
      enable_default_keybindings = false,
      resize_step_x = 3,
      resize_step_y = 3,
    },
  },
  keys = {
    {
      "<C-h>",
      function()
        require("tmux").move_left()
      end,
      desc = "Tmux move left",
    },
    {
      "<C-l>",
      function()
        require("tmux").move_right()
      end,
      desc = "Tmux move right",
    },
    {
      "<C-j>",
      function()
        require("tmux").move_bottom()
      end,
      desc = "Tmux move bottom",
    },
    {
      "<C-k>",
      function()
        require("tmux").move_top()
      end,
      desc = "Tmux move top",
    },
    {
      "<C-M-h>",
      function()
        require("tmux").resize_left()
      end,
      desc = "Tmux resize left",
    },
    {
      "<C-M-l>",
      function()
        require("tmux").resize_right()
      end,
      desc = "Tmux resize right",
    },
    {
      "<C-M-j>",
      function()
        require("tmux").resize_bottom()
      end,
      desc = "Tmux resize bottom",
    },
    {
      "<C-M-k>",
      function()
        require("tmux").resize_top()
      end,
      desc = "Tmux resize top",
    },
  },
}
