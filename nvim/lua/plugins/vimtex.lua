return {
  "lervag/vimtex",
  init = function()
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_format_enabled = 1
    vim.g.vimtex_subfile_start_local = 1
    vim.g.vimtex_view_sioyek_options = "--reuse-window"
    vim.g.vimtex_quickfix_open_on_warning = 0
  end,
}
