return {
  "b0o/incline.nvim",
  event = "VeryLazy",
  config = function()
    local colors = require("tokyonight.colors").setup()
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guifg = "#fff", guibg = colors.bg_dark, gui = "bold" },
          InclineNormalNC = { guifg = colors.fg_dark, guibg = colors.bg_dark },
          ModifiedIcon = { guifg = "#9ECE6A", guibg = colors.bg_dark },
        },
      },
      ignore = {
        buftypes = { "help" },
      },
      window = { margin = { vertical = 0, horizontal = 0 } },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":.")
        local icon, color = require("nvim-web-devicons").get_icon_color(filename)

        if filename:match("^oil:") then
          filename = "Oil"
          icon, color = " ", ""
        end

        local modified = vim.bo[props.buf].modified
        local modified_icon = "●"
        local is_current_buffer = props.buf == vim.api.nvim_get_current_buf()

        local function get_diagnostic_label()
          local icons = { error = "", warn = "", info = "", hint = "" }
          local label = {}

          for severity, icon in pairs(icons) do
            local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
            if n > 0 then
              table.insert(label, { icon .. n .. " ", group = "DiagnosticSign" .. severity })
            end
          end
          if #label > 0 then
            table.insert(label, { "| " })
          end
          return label
        end

        local file_component = {
          { filename, gui = is_current_buffer and "italic" or nil },
        }
        if modified then
          table.insert(file_component, { " " .. modified_icon, group = "ModifiedIcon" })
        end

        return {
          { get_diagnostic_label() },
          { icon, guifg = color },
          { " " },
          file_component,
        }
      end,
    })
  end,
}
