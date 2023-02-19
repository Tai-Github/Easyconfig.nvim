-- Check is installed
local _, renamer = pcall(require, 'renamer')
if not _ then return end

renamer.setup{}

KEYMAP('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
KEYMAP('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
KEYMAP('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
