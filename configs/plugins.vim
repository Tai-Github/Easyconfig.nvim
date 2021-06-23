
" Auto install plugin and plugin manager script
augroup plugins_install
  " Auto install 'vim-plug'
  " if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  "   silent !wget -LO https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ~/.local/share/nvim/site/autoload/plug.vim || curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.local/share/nvim/site/autoload/plug.vim
  " endif

  " Auto run 'PlugInstall' if there are missing plugins
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugClean | PlugInstall --sync | source $MYVIMRC | execute 'close'
  \| endif
augroup END

" Install plugins
call plug#begin('~/.local/share/nvim/plugins')

" User Interface Plugins
Plug 'dracula/vim', { 'name': 'dracula' }            " Dracula - Theme
Plug 'preservim/nerdtree'                            " NERDTree - File System Explorer
Plug 'itchyny/lightline.vim'                         " Lightline - Vim Status Line
Plug 'sheerun/vim-polyglot'                          " Ployglot - Better Syntax Support

" Auto Complete Plugins
Plug 'neoclide/coc.nvim', { 'branch': 'release' }    " C.o.c Intellisense - Auto Complete
Plug 'honza/vim-snippets'                            " Vim Snippets - Snippets List

" Other Plugins
Plug 'alvan/vim-closetag'                            " AutoCloseTag - Auto Close Tag Plugin
Plug 'tpope/vim-surround'                            " Surround - Easily Surround Things
Plug 'tpope/vim-commentary'                          " Commentary - Easily Comment Code
Plug 'jiangmiao/auto-pairs'                          " Auto pairs  - Auto Close Brackets
Plug 'easymotion/vim-easymotion'                     " Easymotion - Vim motion on speed
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " Visual Multi - Multi Cursors
Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }    " Fzf - Fuzzy Finds
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'                            " Fugitive - Vim Plugin For Git

call plug#end()
