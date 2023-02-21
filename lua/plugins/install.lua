-- Auto install packer.nvim if it missing
local install_path = DATA_PATH..'/site/pack/packer/start/packer.nvim'

if FN.empty(FN.glob(install_path)) > 0 then
  SHCMD({'git', 'clone',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Auto reloads neovim whenever save this file
CMD [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost install.lua source <afile> | PackerSync
  augroup end
]]

local use = require('packer').use
return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'tiagovla/tokyodark.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Icon
  use 'kyazdani42/nvim-web-devicons'

  -- File explore tree
  use 'kyazdani42/nvim-tree.lua'

  -- Tabline and statusline
  use 'romgrk/barbar.nvim'
  use 'glepnir/galaxyline.nvim'

   -- Fuzzy find
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Lsp
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'onsails/lspkind.nvim'

  -- Rename
  use 'filipdutescu/renamer.nvim'

  -- Snippet
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Git plugin
  use 'lewis6991/gitsigns.nvim'

  -- Others
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'mg979/vim-visual-multi'
  use 'xiyaowong/nvim-transparent'
end)
