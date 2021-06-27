require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'lua',
    'python',
    'html',
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
