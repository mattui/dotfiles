execute pathogen#infect()
" Turn on syntax highlighting
syntax on
filetype plugin indent on

" Enable line numbers
set number

" Use spaces instead of tabs, set tab width
set noexpandtab
set tabstop=4
set shiftwidth=4

" Enable search highlighting and incremental search
set hlsearch
set incsearch

" Ignore case in searches, unless uppercase letters are used
set ignorecase
set smartcase

" Show the line and column number of the cursor
set ruler

" Show matching brackets
set showmatch

" Keep a certain number of lines above/below the cursor when scrolling
set scrolloff=5

" Use 256-color mode in Vim
set t_Co=256

" A basic status line
set laststatus=2

" More natural splits
set splitbelow
set splitright

" Remember the last position of the cursor
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
