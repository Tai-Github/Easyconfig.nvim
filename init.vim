
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
autocmd BufWritePre * %s/\s\+$//e                    " Remove trailing whitespace on save

" Highlight settings
syntax enable
syntax on
filetype plugin indent on
set cursorline                                       " Highlight cursor line

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab                                        " Use <space> instead <tab>
set autoindent                                       " Auto indent when go to the next line

" Set keys map
nnoremap <leader>h :nohl<CR>                         " Set key map for disable highlight
nnoremap <leader><c-s> :w<CR>                        " Set key map on save

" Set easier split navigations shortcuts
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" Block arrow key
nnoremap <Left> :echoe "No, use 'h'"<CR>
nnoremap <Right> :echoe "No, use 'l'"<CR>
nnoremap <Up> :echoe "No, use 'k'"<CR>
nnoremap <Down> :echoe "No, use 'j'"<CR>


" ===========================================================================
" =                     P L U G I N S   I N S T A L L                       =
" ===========================================================================

call plug#begin('~/.config/nvim/plugins')

" User Interface Plugins
Plug 'preservim/nerdtree'                            " NERDTree - File Tree Viewer
Plug 'vim-airline/vim-airline'                       " Airline - Configurable Status Line
Plug 'dracula/vim', { 'name': 'dracula' }            " Dracula -Theme
Plug 'sheerun/vim-polyglot'                          " Ployglot - Make Theme Look Better

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

call plug#end()

" ===========================================================================
" =                      P L U G I N   S E T T I N G S                      =
" ===========================================================================

" Theme Settings
colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE


" Airline
" Enable powerline fonts
let g:airline_powerline_fonts = 1


" Fzf
nnoremap <leader>f :Files<CR>
nnoremap <leader>w :Windows<CR>
nnoremap <leader>l :Lines<CR>


" Nerd Tree
" Set keys map
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

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
  \ 'coc-snippets',
  \ 'coc-prettier'
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

" Coc-Prettier
" Set 'Format' command
command! -nargs=0 Format :CocCommand prettier.formatFile


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

