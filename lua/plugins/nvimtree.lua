-- Check is installed
local _, tree = pcall(require, 'nvim-tree')
if not _ then return end

-- Config
tree.setup {
  open_on_tab = true,
  update_cwd = true,
  filters = {
    dotfiles = false,
    custom = {'^node_modules$', '^.git$'}
  },
  filesystem_watchers = {
    enable = true
  },
  renderer = {
    -- This option shows indent markers when folders are open
    indent_markers = {
      enable = true,
      inline_arrows = true,
    },
    icons = {
      show = {
        folder_arrow = false,
      },
      glyphs = {
        default = '',
        symlink = '',
        folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
      }
    }
  },
  view = {
    width = 25,
    side = 'left',
  },
  git = {
    enable = false
  }
}

-- Set key bindings
KEYMAP('n', '<C-b>', ':NvimTreeToggle<CR>', OPTION1)

-- Open on startup
local function open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and BO[data.buf].buftype == ""

  if not no_name then
    return
  end

  -- open the tree, find the file but don't focus it
  require("nvim-tree.api").tree.toggle({ focus = true, find_file = true, })
end

API.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Auto close
API.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #API.nvim_list_wins() == 1 and API.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      CMD 'quit'
    end
  end
})
