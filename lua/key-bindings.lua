-- Disable search highlight
KEYMAP('n', '<Leader>h', ':nohl<CR>', OPTION1)

-- Save key
KEYMAP('n', '<Leader>w', ':w<CR>', OPTION1)

KEYMAP('n', 'qq', 'ZZ', OPTION1)

-- Better split window movement
KEYMAP('n', '<C-h>', '<C-w>h', OPTION1)
KEYMAP('n', '<C-j>', '<C-w>j', OPTION1)
KEYMAP('n', '<C-k>', '<C-w>k', OPTION1)
KEYMAP('n', '<C-l>', '<C-w>l', OPTION1)

-- Better movement
KEYMAP('n', 'gh', '^', OPTION1)
KEYMAP('n', 'gl', '$', OPTION1)
KEYMAP('n', 'gw', '#', OPTION1)

-- Resize split windows
KEYMAP('n', '<C-Up>', ':resize -1<CR>', OPTION1)
KEYMAP('n', '<C-Down>', ':resize +1<CR>', OPTION1)
KEYMAP('n', '<C-Left>', ':vertical resize -1<CR>', OPTION1)
KEYMAP('n', '<C-Right>', ':vertical resize +1<CR>', OPTION1)

-- Block arrow keys
KEYMAP('n', '<Up>', ':echo "No, use k"<CR>', OPTION1)
KEYMAP('n', '<Down>', ':echo "No, use j"<CR>', OPTION1)
KEYMAP('n', '<Left>', ':echo "No, use h"<CR>', OPTION1)
KEYMAP('n', '<Right>', ':echo "No, use l"<CR>', OPTION1)

-- Move up and down the selected line of text in visual mode
KEYMAP('x', '<M-k>', ':move \'<-2<CR>gv=gv', OPTION1)
KEYMAP('x', '<M-j>', ':move \'>+1<CR>gv=gv', OPTION1)
