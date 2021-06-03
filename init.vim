"  PLUGIN INSTALL
"  ___________________________________________________________________________

call plug#begin('~/.config/nvim/plugins')

" NERDTree - File Tree Viewer
Plug 'preservim/nerdtree'

" Lightline - Configurable Status Line
Plug 'itchyny/lightline.vim'

" Dracula -Theme
Plug 'dracula/vim', { 'name': 'dracula' }

" Ployglot - Help Theme More Colorful
Plug 'sheerun/vim-polyglot'

" C.o.c Intellisense - Auto Complete Code Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim Snippets - Snippets List
Plug 'honza/vim-snippets'

" AutoCloseTag - Auto Close Tag Plugin 
Plug 'alvan/vim-closetag'

" Surround - Easily Surround Things
Plug 'tpope/vim-surround'

" Commentary - Easily Comment Code
Plug 'tpope/vim-commentary'

" Emmet - HTML Plugin
Plug 'mattn/emmet-vim'

" Auto pairs  - Auto Close Brackets  
Plug 'jiangmiao/auto-pairs'

" Easymotion - Vim motion on speed
Plug 'easymotion/vim-easymotion'

" Visual Multi - Multi Cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Prettier - Format Code 
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'html'] }

call plug#end()


"  PLUGIN SETTINGS
"  ___________________________________________________________________________

" Nerd Tree
" Set Shortcut 
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

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
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <enter> to confirm the select
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

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


" Emmet
let g:user_emmet_leader_key='<C-x>' 


" Lightline
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'filename', 'modified' ] ],
      \   'right': [ [ 'percent', 'lineinfo'  ],
      \              [ 'filetype' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ }

" Dracula Theme
colorscheme dracula


"  GLOBAL SETTINGS
"  ___________________________________________________________________________

" Enable highlight code and theme
syntax enable
syntax on
filetype plugin indent on

" Disable highlight word after search
set nohlsearch

" Show number line
set number 
set relativenumber

" Use 2 <space> every <tab>
set tabstop=2

" Use 2 <space> every indent
set shiftwidth=2

" Use <space> instead <tab>
set expandtab

" Auto indent when go to the next line
set autoindent

" Use system clipboard
set clipboard=unnamedplus

" Set key <leader>
let mapleader = " "

" Remove file command (:RemoveFile <filename>)
" command! -complete=file -nargs=1 RemoveFile :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')
