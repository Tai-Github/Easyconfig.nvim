-- Disable show messages
CMD('set shortmess+=c')

-- Install extentions
G.coc_global_extensions = {
  'coc-html',
  'coc-htmlhint',
  'coc-css',
  'coc-tsserver',
  'coc-emmet',
  'coc-json',
  'coc-snippets',
  'coc-sh',
  'coc-lua',
  'coc-prettier',
  'coc-cssmodules',
  'coc-eslint',
  'coc-prisma',
  'coc-svelte',
  '@yaegassy/coc-tailwindcss3',
  'coc-html-css-support',
  'coc-calc',
  'coc-clangd',
  'coc-fish'
}

-- Snippets
G.coc_snippet_next = '<tab>'
G.coc_snippet_prev = '<s-tab>'

-- Set coc-settings.json path
G.coc_config_home=CONFIG_PATH..'/lua/nv-coc/'

-- Disable on easymotion
CMD [[
  autocmd User EasyMotionPromptBegin silent! CocDisable
  autocmd User EasyMotionPromptEnd silent! CocEnable
]]

-- Show documentation function
CMD [[
  function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
      call CocActionAsync('doHover')
    else
      call feedkeys('K', 'in')
    endif
  endfunction
]]

-- Update signature help on jump placeholder.
CMD[[autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')]]

CMD[[
  function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
]]

-- Key bindings
-- <Tab> to navigate the completion list
KEYMAP('i', '<Tab>',
  'coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\\<Tab>" : coc#refresh()', OPTION2)

-- <S-Tab> to navigate the completion list
KEYMAP('i', '<S-Tab>',
  'coc#pum#visible() ? coc#pum#prev(1) : "\\<S-Tab>"', OPTION2)

-- <CR> to confirm completion
KEYMAP('i', '<CR>',
  'coc#pum#visible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>"', OPTION2)
--

-- <Leader>p to format code
KEYMAP('n', '<Leader>p', ':call CocAction(\'format\')<CR>', OPTION1)

-- gK to show documentation
KEYMAP('n', 'gK', ':call ShowDocumentation()<CR>', OPTION1)

-- GoTo code navigation.
KEYMAP('n', 'gd', '<Plug>(coc-definition)', OPTION1)
KEYMAP('n', 'gy', '<Plug>(coc-type-definition)', OPTION1)
KEYMAP('n', 'gi', '<Plug>(coc-implementation)', OPTION1)
KEYMAP('n', 'gr', '<Plug>(coc-references)', OPTION1)

-- " Use <c-space> to trigger completion.
KEYMAP('i', '<C-space>', 'coc#refresh()', OPTION2)

-- Symbol renaming.
KEYMAP('n', '<Leader>rn', '<Plug>(coc-rename)', OPTION1)
