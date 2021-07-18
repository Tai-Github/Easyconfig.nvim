-- Auto install packer.nvim if it missing
local install_path = DATA_PATH..'/site/pack/packer/start/packer.nvim'

if FN.empty(FN.glob(install_path)) > 0 then
  SHCMD({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

local use = require('packer').use
return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  -- Theme
  use 'joshdick/onedark.vim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  -- Icon
  use 'kyazdani42/nvim-web-devicons'
  -- File explore tree
  use 'kyazdani42/nvim-tree.lua'
  -- Tab/Status bar plugins
  use 'romgrk/barbar.nvim'
  use {'glepnir/galaxyline.nvim', branch = 'main'}
  -- Auto completed
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'honza/vim-snippets'
  -- Fuzzy find
  use 'kien/ctrlp.vim'
  -- Other
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'jiangmiao/auto-pairs'
  use 'norcalli/nvim-colorizer.lua'
end)
