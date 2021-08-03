-- Disable show messages
CMD('set shortmess+=c')

-- Install extentions
G.coc_global_extensions = {
  'coc-html',
  'coc-css',
  'coc-tsserver',
  'coc-emmet',
  'coc-json',
  'coc-snippets',
  'coc-sh',
  'coc-lua'
}

-- Set coc-settings.json path
G.coc_config_home=CONFIG_PATH..'/lua/nv-coc/'

-- Key bindings
-- <Tab> to navigate the completion list
KEYMAP('i', '<Tab>',
  'pumvisible() ? "\\<C-n>" : "\\<Tab>"', OPTION2)

-- <S-Tab> to navigate the completion list
KEYMAP('i', '<S-Tab>',
  'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', OPTION2)

-- <CR> to confirm completion
KEYMAP('i', '<CR>',
  'pumvisible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>\\<C-r>=coc#on_enter()\\<CR>"', OPTION2)

-- <Leader>p to format code
KEYMAP('n', '<Leader>p', ':call CocAction(\'format\')<CR>', OPTION1)
