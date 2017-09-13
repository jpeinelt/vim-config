" Built-In Functionality
"" General
let mapleader = ','

set hidden " Allow background buffers without saving
set spell spelllang=en_us
set splitright " Split to right by default

set belloff=all

"" Text Wrapping
set textwidth=79
set colorcolumn=80
set nowrap

"" Search and Substitute
set gdefault " use global flag by default in s: commands
set hlsearch " highlight searches
set ignorecase
set smartcase " don't ignore capitals in searches
nnoremap <leader><space> :nohls <enter>

"" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"" Backup, Swap and Undo
set undofile " Persistent Undo
if has("win32")
    set directory=$HOME\vimfiles\swap,$TEMP
    set backupdir=$HOME\vimfiles\backup,$TEMP
    set undodir=$HOME\vimfiles\undo,$TEMP
else
    set directory=~/.vim/swap,/tmp
    set backupdir=~/.vim/backup,/tmp
    set undodir=~/.vim/undo,/tmp
endif

"" NetRW
let g:netrw_liststyle = 1 " Detail View
let g:netrw_sizestyle = "H" " Human-readable file sizes
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " hide dotfiles
let g:netrw_hide = 1 " hide dotfiles by default
let g:netrw_banner = 0 " Turn off banner
""" Explore in vertical split
nnoremap <Leader>e :Explore! <enter>

"" Mappings
" nnoremap ; :
nnoremap <C-H> :bp <enter>
nnoremap <C-L> :bn <enter>
nnoremap <Leader>w :w <enter>
nnoremap <Leader>q :bd <enter>

noremap <Leader>x "+

" Plugins
"" Installation with Vim-Plug
if has("win32")
    call plug#begin('~/vimfiles/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

""" Basics
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'flazz/vim-colorschemes'

""" General Functionality
Plug 'lifepillar/vim-mucomplete'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'chiel92/vim-autoformat'

""" Special Functionality
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'godlygeek/tabular'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'elmcast/elm-vim'
call plug#end()

"" Colors
set termguicolors
colorscheme darth
let g:airline_theme='minimalist'

"" Autocompletion
set completeopt=menuone,noinsert,noselect
set shortmess+=c " Turn off completion messages

inoremap <expr> <c-e> mucomplete#popup_exit("\<c-e>")
inoremap <expr> <c-y> mucomplete#popup_exit("\<c-y>")
inoremap <expr>  <cr> mucomplete#popup_exit("\<cr>")

let g:mucomplete#enable_auto_at_startup = 1

"" Goyo & Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


