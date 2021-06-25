-- Disable show messages
vim.cmd('set shortmess+=c')

-- Install extentions
vim.g.coc_global_extensions = {
  'coc-html',
  'coc-css',
  'coc-tsserver',
  'coc-snippets'
}

-- Source this file will have <Tab> and <S-Tab> to navigate in complete menu
vim.cmd('source '..vim.fn.stdpath('config')..'/vimscripts/coc-functions.vim')
