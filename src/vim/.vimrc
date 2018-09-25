:set nocompatible
:syntax enable
:set background=dark
:set number
:set ruler
:set ts=2 sw=2 sts=2 expandtab
autocmd FileType ChangeLog set noet ts=8 sw=8 sts=8
":set textwidth=78
":set wrap

set number
set ruler
syntax on

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
" set listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" swp files are annoying. Let's hope vim doesn't crash
set nobackup
set nowritebackup
set noswapfile

function s:setupWrapping()
  set wrap
  set wm=2
  set textwidth=72
endfunction

" Autocommands
au BufRead,BufNewFile *.txt call s:setupWrapping()
filetype on
au BufNewFile,BufRead *.CUF set filetype=fortran

autocmd BufWritePost *.tex make

