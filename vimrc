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
set ignorecase			" search with ignore case
set smartcase			" search with smart case
set showmatch           	" highlight matching parentheses / brackets [{()}]
set encoding=utf-8      	" set encoding to UTF-8 (default was "latin1")


"Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

"""" Open nerd tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"""" Move between tabs by Ctrl+t [up/down/left/right]
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
