-- Disable search highlight
KEYMAP('n', '<Leader>h', ':nohl<CR>', {noremap = true, silent = true})

-- Save key
KEYMAP('n', '<Leader>w', ':w<CR>', {noremap = true, silent = true})

-- Better split window movement
KEYMAP('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
KEYMAP('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
KEYMAP('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
KEYMAP('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- Better movement
KEYMAP('n', 'gh', '^', {noremap = true, silent = true})
KEYMAP('n', 'gl', '$', {noremap = true, silent = true})
KEYMAP('n', 'gw', '#', {noremap = true, silent = true})

-- Resize split windows
KEYMAP('n', '<C-Up>', ':resize -1<CR>', {noremap = true, silent = true})
KEYMAP('n', '<C-Down>', ':resize +1<CR>', {noremap = true, silent = true})
KEYMAP('n', '<C-Left>', ':vertical resize -1<CR>', {noremap = true, silent = true})
KEYMAP('n', '<C-Right>', ':vertical resize +1<CR>', {noremap = true, silent = true})

-- Block arrow keys
KEYMAP('n', '<Up>', ':echo "No, use k"<CR>', {noremap = true, silent = true})
KEYMAP('n', '<Down>', ':echo "No, use j"<CR>', {noremap = true, silent = true})
KEYMAP('n', '<Left>', ':echo "No, use h"<CR>', {noremap = true, silent = true})
KEYMAP('n', '<Right>', ':echo "No, use l"<CR>', {noremap = true, silent = true})

-- Move up and down the selected line of text in visual mode
KEYMAP('x', '<M-k>', ':move \'<-2<CR>gv=gv', {noremap = true, silent = true})
KEYMAP('x', '<M-j>', ':move \'>+1<CR>gv=gv', {noremap = true, silent = true})
