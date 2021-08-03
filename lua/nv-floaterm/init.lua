-- Config
G.floaterm_autoclose = 2

-- Key bindings
G.floaterm_keymap_kill = '<Esc><Esc>'
KEYMAP('n', '<Leader>t;',
  ':FloatermNew --height=0.9 --width=0.8<CR>',
  {noremap = true, silent = true})

KEYMAP('n', '<Leader>tl',
  ':FloatermNew --height=0.9 --width=0.8 lazygit<CR>',
  {noremap = true, silent = true})
