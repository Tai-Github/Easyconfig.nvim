-- Disable search highlight
vim.api.nvim_set_keymap('n', '<Leader>h', ':nohl<CR>', {silent = true})

-- Use <C-c> instead <esc>
vim.api.nvim_set_keymap('n', '<C-c', '<Esc>', {noremap = true, silent = true})

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- Better movement
vim.api.nvim_set_keymap('n', 'gh', '^', {silent = true})
vim.api.nvim_set_keymap('n', 'gl', '$', {silent = true})
vim.api.nvim_set_keymap('n', '<C-f>w', '#', {silent = true})

-- Resize split windows
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -1<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +1<CR>', {noremap = true, silent = true})

-- Block arrow keys
vim.api.nvim_set_keymap('n', '<Up>', ':echo "No, use k"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<Down>', ':echo "No, use j"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<Left>', ':echo "No, use h"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<Right>', ':echo "No, use l"<CR>', {noremap = true, silent = false})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {noremap = true, silent = false})

-- Move up and down the selected line/block of text in visual mode
vim.api.nvim_set_keymap('x', '<M-k>', ':move \'<-2<CR>gv=gv', {noremap = true, silent = false})
vim.api.nvim_set_keymap('x', '<M-j>', ':move \'>+1<CR>gv=gv', {noremap = true, silent = false})
