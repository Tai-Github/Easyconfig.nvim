-- Auto install packer.nvim if it missing
local install_path = FN.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if FN.empty(FN.glob(install_path)) > 0 then
  FN.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'

  -- GUI plugins
  use 'ghifarit53/tokyonight-vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'romgrk/barbar.nvim'
  use {'glepnir/galaxyline.nvim', branch = main}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

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
