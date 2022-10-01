require('me.util').setup("bufferline") {
  highlights = {
    buffer_selected = {
      bold = true,
      italic = true,
    }
  },
  options = {
    numbers = "none",
    indicator = {
      icon = '▍',
      style = 'icon',
    },
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count)
      return "(" .. count .. ")"
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        text_align = "center",
        separator = false,
        padding = 1,
      },
    },
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = true,
    show_tab_indicators = true,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    separator_style = "",
    always_show_bufferline = false,
  }
}