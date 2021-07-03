G.nvim_tree_ignore = {'.git', 'node_modules'}    -- Set directory will hide
G.nvim_tree_auto_open = 1                        -- Auto open tree when enter blank nvim
G.nvim_tree_auto_close = 1                       -- Auto close tree when quit nvim
G.nvim_tree_update_cwd = 1                       -- Update tree when some thing change
G.nvim_tree_indent_markers = 1                   -- This option shows indent markers when folders are open

-- Enable icons
G.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1
}

G.nvim_tree_icons = {
    default = '',
    symlink = '',
    -- git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
    folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}

-- Set key bindings
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
