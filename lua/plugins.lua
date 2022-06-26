-- Auto install packer.nvim if it missing
local install_path = DATA_PATH..'/site/pack/packer/start/packer.nvim'

if FN.empty(FN.glob(install_path)) > 0 then
  SHCMD({'git', 'clone',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Auto reloads neovim whenever save plugins.lua dile
CMD [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local use = require('packer').use
return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'dracula/vim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'

  -- Icon
  use 'kyazdani42/nvim-web-devicons'

  -- File explore tree
  use 'kyazdani42/nvim-tree.lua'

  -- Tab/Status bar plugins
  use 'famiu/bufdelete.nvim'
  use {'akinsho/bufferline.nvim', tag = "v2.*" }
  use {'glepnir/galaxyline.nvim', branch = 'main'}

  -- Lsp
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use { 'glepnir/lspsaga.nvim', branch = 'main' }

  -- Auto completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippets
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Formater
  -- use {'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production'}

  -- Fuzzy find
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Float terminal
  use 'voldikss/vim-floaterm'

  -- Git plugin
  use 'lewis6991/gitsigns.nvim'

  -- Other
  use 'norcalli/nvim-colorizer.lua'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'jiangmiao/auto-pairs'
  use {'mg979/vim-visual-multi', branch = 'master'}
  use 'easymotion/vim-easymotion'
end)
