-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/bufferline.nvim'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

require("bufferline").setup{
  options = {
    right_mouse_command = 'vert sbuffer %d',
    close_command = "bdelete! %d",
    show_close_icon = true,
    separator_style = 'thin',
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = 'PanelHeading',
        padding = 1,
      },
      {
        filetype = 'DiffviewFiles',
        text = 'Diff View',
        highlight = 'PanelHeading',
        padding = 1,
      },
      {
        filetype = 'flutterToolsOutline'
      }
   }
  }
}

-- Key bindings
KEYMAP('n', '<M-h>', ':BufferLineCyclePrev<CR>', OPTION1)
KEYMAP('n', '<M-l>', ':BufferLineCycleNext<CR>', OPTION1)
KEYMAP('n', '<M-w>', ':lua require(\'bufdelete\').bufdelete(0, true)<CR>', OPTION1)
