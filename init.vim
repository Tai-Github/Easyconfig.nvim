"         _   __                _              ______            _____
"        / | / /__  ____ _   __(_)___ ___     / ____/___  ____  / __(_)_____
"       /  |/ / _ \/ __ \ | / / / __ `__ \   / /   / __ \/ __ \/ /_/ / __  /
"      / /|  /  __/ /_/ / |/ / / / / / / /  / /___/ /_/ / / / / __/ / /_/ /
"     /_/ |_/\___/\____/|___/_/_/ /_/ /_/   \____/\____/_/ /_/_/ /_/\__, /
"                                                                  /____/

" ============================================================================
" =                      G L O B A L   S E T T I N G S                       =
" ============================================================================

" Basic settings
let mapleader = " "                                  " Set key <leader>
set mouse=a                                          " Enable mouse
set noshowmode                                       " Disable show like --INSERT-- on left corner of the screen
set number relativenumber                            " Show number line
set clipboard=unnamedplus                            " Using system clipboard
set splitbelow splitright                            " Open new split panes to right and bottom, which feels more natural
set t_Co=256                                         " Set color terminal = 256
autocmd BufWritePre * %s/\s\+$//e                    " Remove trailing whitespace on save

" Highlight settings
syntax enable                                        " Enable highlight
syntax on
filetype plugin indent on
set cursorline                                       " Highlight cursor line

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab                                        " Use <space> instead <tab>
set autoindent                                       " Auto indent when go to the next line

" Set key maps
nnoremap <leader>h :nohl<cr>                         " Set key map for disable highlight

" Set easier split navigations shortcuts
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" Block arrow key
nnoremap <Left> :echoe "No, use 'h'"<cr>
nnoremap <Right> :echoe "No, use 'l'"<cr>
nnoremap <Up> :echoe "No, use 'k'"<cr>
nnoremap <Down> :echoe "No, use 'j'"<cr>


" ===========================================================================
" =                     P L U G I N S   I N S T A L L                       =
" ===========================================================================

" Auto install plugin and plugin manager script
augroup plugins_install
  " Auto install 'vim-plug'
  if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !wget -LO https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim ~/.local/share/nvim/site/autoload/plug.vim || curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > ~/.local/share/nvim/site/autoload/plug.vim
  endif

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

" ===========================================================================
" =                      P L U G I N   S E T T I N G S                      =
" ===========================================================================

" Theme Settings
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE


" Lightline
let g:lightline = {
\ 'colorscheme': 'dracula',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
\   'right': [ [ 'lineinfo', 'percent' ],
\              [ 'filetype' ] ]
\ },
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' },
\ 'component_function': {
\   'gitbranch': 'fugitive#head'
\ },
\ }

augroup disable_lightline_on_nerdtree
    au!
    au FileType nerdtree call s:disable_lightline_on_nerdtree()
    au WinEnter,BufWinEnter,TabEnter * call s:disable_lightline_on_nerdtree()
augroup END

fu s:disable_lightline_on_nerdtree() abort
    let nerdtree_winnr = index(map(range(1, winnr('$')), {_,v -> getbufvar(winbufnr(v), '&ft')}), 'nerdtree') + 1
    call timer_start(0, {-> nerdtree_winnr && setwinvar(nerdtree_winnr, '&stl', '%#Normal#')})
endfu


" Fzf
nnoremap <leader>f :Files<cr>
nnoremap <leader>w :Windows<cr>
nnoremap <leader>l :Lines<cr>

" Turn off preview files
let g:fzf_preview_window = []


" Nerd Tree
" Set NERDTree keys maps
nnoremap <c-b> :NERDTreeToggle<cr>
nnoremap <c-f> :NERDTreeFind<cr>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror


" Coc Intellisense
" Install Extensions
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-tsserver',
  \ 'coc-snippets'
  \ ]

" Use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<c-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <enter> to confirm the select
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>"

" Fix error  when using easymotion
autocmd User EasyMotionPromptBegin silent! CocDisable
autocmd User EasyMotionPromptEnd silent! CocEnable


" Auto Close Tag
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html, *.jsx, *.js'

" This will make the list of non-closing tags case-sensitive
let g:closetag_emptyTags_caseSensitive = 0

" Disables auto-close if not in a 'valid' region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

