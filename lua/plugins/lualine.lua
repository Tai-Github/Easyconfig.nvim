local _, lualine = pcall(require, 'lualine')
if not _ then return end

lualine.setup {
  options = {
    theme = 'horizon',
    disabled_filetypes = {
      statusline = { 'NvimTree' },
    },
  }
}
