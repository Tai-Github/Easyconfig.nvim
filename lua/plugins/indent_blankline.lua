local _, indent_blankline = pcall(require, 'indent_blankline')

CMD [[highlight IndentBlanklineContextChar guifg=#c4c4c4 gui=nocombine]]

indent_blankline.setup {
  show_current_context = true,
  show_current_context_start = false,
  context_char_highlight_list = {
    'IndentBlanklineContextChar',
  }
}
