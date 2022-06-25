-- Check is installed
local install_path = DATA_PATH..'/site/pack/packer/start/nvim-treesitter'
if FN.empty(FN.glob(install_path)) > 0 then
  return
end

-- Config
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'lua',
    'python',
    'css',
    'scss',
    'javascript',
    'tsx',
    'typescript',
    'vue',
    'json',
    'jsonc',
    'c',
    'cpp',
    'c_sharp',
    'rust',
    'prisma',
    'html'
  },

  matchup = {
      enable = true,              -- mandatory, false will disable the whole extension
  },

  highlight = {
      enable = true               -- false will disable the whole extension
  },

  context_commentstring = {
      enable = true,
      config = {
        css = '// %s'
      }
  },

  indent = {enable = true},
  autotag = {enable = true},
}
