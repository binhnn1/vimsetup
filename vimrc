set nocompatible              " be iMproved, required
filetype off                  " required
set wrap

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Other Plugins
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'junegunn/fzf'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'junegunn/seoul256.vim'
Plugin 'dracula/vim',{'name':'dracula'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader=","               " leader is comma

" jk is escape
inoremap jk <esc>

" Basic Behavior
set number                      " show line numbers
set cursorline                  " highlight current line
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches
set ignorecase                  " search with ignore case
set smartcase                   " search with smart case
set showmatch                   " highlight matching parentheses / brackets [{()}]
set encoding=utf-8              " set encoding to UTF-8 (default was "latin1")

set shiftwidth=3                " set indent = 3 spaces
set tabstop=3                   " set tabstop = 3
set autoindent
set smartindent

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

" Open nerd tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Move between tabs by Ctrl+t [up/down/left/right]
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

"Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11"

syntax enable
"colorscheme dracula
colorscheme seoul256
