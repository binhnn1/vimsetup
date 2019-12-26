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


set shiftwidth=3		" set indent = 3 spaces
set tabstop=3			" set tabstop = 3
set autoindent
set smartindent

"Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"NERDCommenter configuration
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


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
