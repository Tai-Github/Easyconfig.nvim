-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/vim-floaterm'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Config
G.floaterm_autoclose = 2
G.floaterm_width     = 0.8
G.floaterm_height    = 0.9

-- Highlight
CMD('hi FloatermBorder guibg=normal')

-- Key bindings
G.floaterm_keymap_new    = '<M-t>t'
G.floaterm_keymap_kill   = '<M-t>k'
G.floaterm_keymap_prev   = '<M-t>h'
G.floaterm_keymap_next   = '<M-t>l'
G.floaterm_keymap_toggle = '<M-t>i'

-- Git
KEYMAP('n', '<M-t>g', ':FloatermNew lazygit<CR>', OPTION1)
