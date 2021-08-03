-- Config
G.floaterm_autoclose = 2

-- Key bindings
G.floaterm_keymap_kill = '<Esc><Esc>'
KEYMAP('n', '<Leader>t;',
  ':FloatermNew --height=0.9 --width=0.8<CR>', OPTION1)

KEYMAP('n', '<Leader>tl',
  ':FloatermNew --height=0.9 --width=0.8 lazygit<CR>', OPTION1)
