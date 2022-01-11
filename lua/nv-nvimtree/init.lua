-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/nvim-tree.lua'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Config
G.nvim_tree_indent_markers = 1  -- This option shows indent markers when folders are open
G.nvim_tree_show_icons = {      -- Enable icons
  git = 0,
  folders = 1,
  files = 1
}
G.nvim_tree_icons = {
  default = '',
  symlink = '',
  folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}

local tree_cb = require('nvim-tree.config').nvim_tree_callback
require('nvim-tree').setup {
  open_on_setup = true,
  auto_close = true,
  open_on_tab = true,
  update_cwd = true,
  filters = {
    dotfiles = false,
    custom = {'.git', 'node_modules'}
  },
  view = {
    width = 29,
    side = 'left',
    mappings = {
      custom_only = true,
      list = {
        { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
        { key = {"<2-RightMouse>", "cd"},       cb = tree_cb("cd") },
        { key = "<C-v>",                        cb = tree_cb("vsplit") },
        { key = "<C-x>",                        cb = tree_cb("split") },
        { key = "<C-t>",                        cb = tree_cb("tabnew") },
        { key = "<",                            cb = tree_cb("prev_sibling") },
        { key = ">",                            cb = tree_cb("next_sibling") },
        { key = "P",                            cb = tree_cb("parent_node") },
        { key = "<BS>",                         cb = tree_cb("close_node") },
        { key = "<S-CR>",                       cb = tree_cb("close_node") },
        { key = "<Tab>",                        cb = tree_cb("preview") },
        { key = "K",                            cb = tree_cb("first_sibling") },
        { key = "J",                            cb = tree_cb("last_sibling") },
        { key = "I",                            cb = tree_cb("toggle_ignored") },
        { key = "H",                            cb = tree_cb("toggle_dotfiles") },
        { key = "R",                            cb = tree_cb("refresh") },
        { key = "a",                            cb = tree_cb("create") },
        { key = "d",                            cb = tree_cb("remove") },
        { key = "r",                            cb = tree_cb("rename") },
        { key = "<C-r>",                        cb = tree_cb("full_rename") },
        { key = "x",                            cb = tree_cb("cut") },
        { key = "c",                            cb = tree_cb("copy") },
        { key = "p",                            cb = tree_cb("paste") },
        { key = "y",                            cb = tree_cb("copy_name") },
        { key = "Y",                            cb = tree_cb("copy_path") },
        { key = "gy",                           cb = tree_cb("copy_absolute_path") },
        { key = "[c",                           cb = tree_cb("prev_git_item") },
        { key = "]c",                           cb = tree_cb("next_git_item") },
        { key = "-",                            cb = tree_cb("dir_up") },
        { key = "s",                            cb = tree_cb("system_open") },
        { key = "q",                            cb = tree_cb("close") },
        { key = "g?",                           cb = tree_cb("toggle_help") },
      }
    },
  },
  git = {
    enable = false
  }
}

-- Set key bindings
KEYMAP('n', '<C-b>', ':NvimTreeToggle<CR>', OPTION1)