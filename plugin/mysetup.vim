"  This file is actually stored in %HOMEPATH%\vimfiles so that it 
"  can be tracked with GIT.
"  pwr 2022-06-04
"
filetype plugin indent on 
syntax on 

" =================  Search setup  ============
set columns=9999
set lines=113
set scrolloff=8
set relativenumber

" =================  Search setup  ============
set hlsearch     "Turn highligh search
set incsearch    "Turn on Incremental search
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set textwidth=140



" =============== INDENTING ===================
set autoindent  " Automatically set the indent of a new line (local to buffer)
set smartindent " smartindent (local to buffer)


" ================= Setup Windows' Copy Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa





" =============== Plugin manager ===================
   call plug#begin('~/.vim/plugged')
   Plug 'rust-lang/rust.vim'
