-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/barbar.nvim'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Config
G.bufferline = {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  -- exclude_ft = { 'javascript' },
  -- exclude_name = { 'package.json' },

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = true,

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 4,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = 'untitled',
}

-- Set key bindings
-- Movement
KEYMAP('n', '<M-h>', ':BufferPrevious<CR>', OPTION1)
KEYMAP('n', '<M-l>', ':BufferNext    <CR>', OPTION1)

-- Goto
KEYMAP('n', '<M-1>', ':BufferGoto 1  <CR>', OPTION1)
KEYMAP('n', '<M-2>', ':BufferGoto 2  <CR>', OPTION1)
KEYMAP('n', '<M-3>', ':BufferGoto 3  <CR>', OPTION1)
KEYMAP('n', '<M-4>', ':BufferGoto 4  <CR>', OPTION1)
KEYMAP('n', '<M-5>', ':BufferGoto 5  <CR>', OPTION1)
KEYMAP('n', '<M-6>', ':BufferGoto 6  <CR>', OPTION1)
KEYMAP('n', '<M-7>', ':BufferGoto 7  <CR>', OPTION1)
KEYMAP('n', '<M-8>', ':BufferGoto 8  <CR>', OPTION1)
KEYMAP('n', '<M-9>', ':BufferGoto 9  <CR>', OPTION1)
KEYMAP('n', '<M-0>', ':BufferLast    <CR>', OPTION1)
KEYMAP('n', '<M-g>', ':BufferPick    <CR>', OPTION1)

-- Close
KEYMAP('n', '<M-x>', ':BufferClose<CR>', OPTION1)
