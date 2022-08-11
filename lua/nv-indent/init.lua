CMD [[highlight IndentBlanklineContextChar guifg=#c4c4c4 gui=nocombine]]

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = false,
  context_char_highlight_list = {
    'IndentBlanklineContextChar',
  }
}
