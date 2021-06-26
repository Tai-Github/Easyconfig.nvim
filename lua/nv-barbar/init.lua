-- Set key bindings
-- Movement
KEYMAP('n', '<M-h>', ':BufferPrevious<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-l>', ':BufferNext<CR>', {noremap = true, silent = true})

-- Goto
KEYMAP('n', '<M-1>', ':BufferGoto 1<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-2>', ':BufferGoto 2<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-3>', ':BufferGoto 3<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-4>', ':BufferGoto 4<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-5>', ':BufferGoto 5<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-6>', ':BufferGoto 6<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-7>', ':BufferGoto 7<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-8>', ':BufferGoto 8<CR>', {noremap = true, silent = true})
KEYMAP('n', '<M-9>', ':BufferLast<CR>', {noremap = true, silent = true})

-- Close
KEYMAP('n', '<M-x>', ':BufferClose<CR>', {noremap = true, silent = true})
