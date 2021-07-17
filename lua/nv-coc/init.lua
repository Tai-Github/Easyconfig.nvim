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

-- Set coc-settings path
G.coc_config_home=CONFIG_PATH..'/lua/nv-coc/'

-- Key bindings
-- <Tab> to navigate the completion list
KEYMAP('i', '<Tab>',
    'pumvisible() ? "\\<C-n>" : "\\<Tab>"',
    {noremap = true, silent = true, expr = true})

-- <S-Tab> to navigate the completion list
KEYMAP('i', '<S-Tab>',
    'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"',
    {noremap = true, silent = true, expr = true})

-- <CR> to confirm completion
KEYMAP('i', '<CR>',
    'pumvisible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>\\<C-r>=coc#on_enter()\\<CR>"',
    {noremap = true, silent = true, expr = true})

-- <Leader>p to format code
KEYMAP('n', '<Leader>p', ':call CocAction(\'format\')<CR>', {noremap = true, silent = true})
