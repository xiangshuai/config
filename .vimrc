set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 Plugin 'elzr/vim-json'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
 Plugin 'tmhedberg/SimpylFold' 
 Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
 Plugin 'nvie/vim-flake8'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
noremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
set foldmethod=indent
set foldlevel=99

"Enable folding with the spacebar
nnoremap <space> za

set splitbelow
set splitright

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=79
"set expandtab
set autoindent
set fileformat=unix

set nu
set hlsearch
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set incsearch
set pastetoggle=<F9>
" Press F12 to switch to UTF-8 encoding
nnoremap <F12> :e ++enc=utf-8<CR>
