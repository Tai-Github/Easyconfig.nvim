require('lspsaga').init_lsp_saga {
  show_diagnostic_source = true,
  border_style = "rounded",
  code_action_lightbulb = {
    enable = false
  }
}

-- Key bindings
KEYMAP('n', 'gF',':Lspsaga lsp_finder<CR>', OPTION1)
KEYMAP('n', 'gK', ':Lspsaga hover_doc<CR>', OPTION1)
KEYMAP('n', '<C-[>', ':lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', OPTION1)
KEYMAP('n', '<C-]>', ':lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', OPTION1)
KEYMAP('n', '<F2>', ':Lspsaga rename<CR>', OPTION1)
