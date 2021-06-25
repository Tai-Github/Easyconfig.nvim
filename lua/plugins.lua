-- Auto install packer.nvim if it missing
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- GUI plugins
  use 'ghifarit53/tokyonight-vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'
  use 'sheerun/vim-polyglot'
  use {
    'glepnir/galaxyline.nvim',
    branch = main
  }

  -- Auto completed
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'honza/vim-snippets'

  -- Other
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'jiangmiao/auto-pairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'easymotion/vim-easymotion'
end)
