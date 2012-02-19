set ts=4
syntax on
set ai
set nocompatible
set vb
"set nohlsearch
set showmatch
set binary noeol
set backspace=indent,eol,start

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
 
"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
"endif
 
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
  " Auto-source .vimrc after the file is saved
  autocmd BufWritePost .vimrc source $MYVIMRC
endif

au BufNewFile,BufRead *.jtmpl set filetype=htmljinja
au BufNewFile,BufRead *.jinja2 set filetype=htmljinja
au BufRead,BufNewFile *.scss set filetype=scss

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd             " Show (partial) command in status line.
"set showmatch          " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)
set laststatus=2
set softtabstop=4
set shiftwidth=4
set title
set expandtab
" open ~/.vimrc on \v
map <leader>v :new ~/.vimrc<Return>
let g:molokai_original = 1
set notitle