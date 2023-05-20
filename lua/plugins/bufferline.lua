local _, bufferline = pcall(require, 'bufferline')
local __, closeBuffers = pcall(require, 'close_buffers')
if not (_ and __) then return end

bufferline.setup {
  options = {
    separator_style = 'slant',
    enforce_regular_tabs = true,
    diagnostics = 'nvim_lsp',
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = ""
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or " " )
        s = s .. n .. sym
      end
      return s
    end,
    offsets = {
      {
        filetype = 'NvimTree',
        text = 'File Explorer',
        highlight = "Directory",
        text_align = 'center',
        separator = true
      }
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    }
  }
}

closeBuffers.setup({
  filetype_ignore = {},  -- Filetype to ignore when running deletions
  file_glob_ignore = {},  -- File name glob pattern to ignore when running deletions (e.g. '*.md')
  file_regex_ignore = {}, -- File name regex pattern to ignore when running deletions (e.g. '.*[.]md')
  preserve_window_layout = { 'this', 'nameless' },  -- Types of deletion that should preserve the window layout
  next_buffer_cmd = nil,  -- Custom function to retrieve the next buffer when preserving window layout
})

function BufferClose()
  CMD 'NvimTreeClose'
  closeBuffers.delete({ type = 'this' })
end

-- Key bindings
KEYMAP('n', '<M-1>', ':BufferLineGoToBuffer 1<CR>', OPTION1)
KEYMAP('n', '<M-2>', ':BufferLineGoToBuffer 2<CR>', OPTION1)
KEYMAP('n', '<M-3>', ':BufferLineGoToBuffer 3<CR>', OPTION1)
KEYMAP('n', '<M-4>', ':BufferLineGoToBuffer 4<CR>', OPTION1)
KEYMAP('n', '<M-5>', ':BufferLineGoToBuffer 5<CR>', OPTION1)
KEYMAP('n', '<M-6>', ':BufferLineGoToBuffer 6<CR>', OPTION1)
KEYMAP('n', '<M-7>', ':BufferLineGoToBuffer 7<CR>', OPTION1)
KEYMAP('n', '<M-8>', ':BufferLineGoToBuffer 8<CR>', OPTION1)
KEYMAP('n', '<M-9>', ':BufferLineGoToBuffer 9<CR>', OPTION1)
KEYMAP('n', '<M-0>', ':BufferLineGoToBuffer -1<CR>', OPTION1)
KEYMAP('n', '<M-l>', ':BufferLineCycleNext<CR>', OPTION1)
KEYMAP('n', '<M-h>', ':BufferLineCyclePrev<CR>', OPTION1)
KEYMAP('n', '<M-w>', ':lua BufferClose()<CR>', OPTION1)
