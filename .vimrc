if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
call plug#end()

set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }
colorscheme onedark
syntax on

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set encoding=UTF-8

set relativenumber
set clipboard=unnamedplus
set mouse=a
set number	
set showmatch
set hlsearch
set smartcase
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set undolevels=1000
set colorcolumn=80

map <C-o> :Files<CR>
map <C-n> :NERDTreeToggle<CR>

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let @d = ":put =strftime('%d.%m.%Y')"
