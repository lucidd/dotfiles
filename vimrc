call plug#begin('~/.vim/plugged')
    Plug 'junegunn/vim-github-dashboard'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'nanotech/jellybeans.vim'
    Plug 'wting/rust.vim'
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'bling/vim-airline'
    Plug 'Shougo/unite.vim'
    Plug 'derekwyatt/vim-scala'
    Plug 'Shougo/vimproc.vim', { 'do': 'make' }
call plug#end()

" auto reload .vimrc on save
autocmd! bufwritepost .vimrc source %

" use X11 clipboard
set clipboard=unnamedplus

" don't loose selection when indenting
vnoremap < <gv
vnoremap > >gv

let mapleader = ","

" Unmap arrow keys
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
no <down> ddp

ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>

vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
vno <down> <Nop>

nnoremap <C-p> :Unite file_rec/async<CR>
noremap  <C-l> :Unite buffer<CR>
nnoremap <silent> <F3> :set hlsearch!<CR>

nnoremap <Space> za
vnoremap <Space> za

ino jj <esc>
cno jj <c-c>
vno v <esc>

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set showmatch

set incsearch
set hlsearch

set number
set relativenumber

set cursorline

set listchars=tab:»·,trail:·,extends:>,precedes:<,eol:¬
set list

set foldmethod=syntax

syntax on

set spelllang=en

set laststatus=2
let g:airline_powerline_fonts = 0
" unicode symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = 'ln'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = '🔒'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#ctrlp#show_adjacent_modes = 0
"set t_Co=256

" detect *.md files as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

colorscheme jellybeans

"highlight OverLength ctermbg=235 guibg=#2c2d27
"match OverLength /\%81v.\+/

set textwidth=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27
set colorcolumn=+1

filetype plugin indent on
