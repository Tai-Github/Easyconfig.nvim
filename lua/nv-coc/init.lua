-- Disable show messages
vim.cmd('set shortmess+=c')

-- Install extentions
vim.g.coc_global_extensions = {
  'coc-html',
  'coc-css',
  'coc-tsserver',
  'coc-json',
  'coc-snippets',
  'coc-emmet'
}

-- Key bindings
vim.api.nvim_set_keymap(
  'i',
  '<Tab>',
  'pumvisible() ? "\\<C-n>" : "\\<Tab>"',
  {noremap = true, silent = true, expr = true}
)
vim.api.nvim_set_keymap(
  'i',
  '<S-Tab>',
  'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"',
  {noremap = true, silent = true, expr = true}
)
vim.api.nvim_set_keymap(
  'i',
  '<CR>',
  'pumvisible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>\\<C-r>=coc#on_enter()\\<CR>"',
  {noremap = true, silent = true, expr = true}
)
