execute pathogen#infect()


let mapleader=","       	" leader is comma

" jk is escape
inoremap jk <esc>


"""" Vim apperance
" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable           	" enable syntax processing
filetype plugin indent on

" Vim theme
colorscheme dracula		" enable dracula theme


"""" Basic Behavior
set number              	" show line numbers
set cursorline          	" highlight current line
set incsearch           	" search as characters are entered
set hlsearch            	" highlight matches
set showmatch           	" highlight matching parentheses / brackets [{()}]
set encoding=utf-8      	" set encoding to UTF-8 (default was "latin1")


" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
