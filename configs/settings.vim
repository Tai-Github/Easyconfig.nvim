
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
