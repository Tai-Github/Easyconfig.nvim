-- Check is installed
local _, treesitter = pcall(require, 'nvim-treesitter')
if not _ then return end

-- Config
require('nvim-treesitter.configs').setup {
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
    'html',
    -- 'pascal',
    'fish',
    'svelte',
    'jsdoc'
  },

  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
  },

  highlight = {
    enable = true,               -- false will disable the whole extension
    additional_vim_regex_highlighting = true,
  },

  context_commentstring = {
    enable = true,
    config = {
      css = '// %s'
    }
  },

  -- indent = {enable = true},
  autotag = {enable = true},
}
