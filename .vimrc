"call pathogen#infect()
"call pathogen#helptags()

"defaults for indentation
set shiftwidth=4
set tabstop=4

imap kj <Esc> 

filetype plugin indent on
syntax on

"colorscheme elflord

let mapleader=","

"rails configuration
"map <leader>rc :Rcontroller<space>
"map <leader>rm :Rmodel<space>
"map <leader>rv :Rview<space>
"map <leader>rf :Rview _form
"map <leader>av :AV
"map <F3> <C-]>

" assorted options
set smartindent
set autowrite
set bg=dark
set expandtab
set ignorecase
set mouse=nv
set number
set nocompatible
set ofu=syntaxcomplete#Complete
set ruler
set showmatch
set vb
" autosave when focus is lost
:au FocusLost * :wa

" CommandT
"noremap <leader>t :CommandT<CR>
"let g:CommandTMaxHeight=10
"set wildignore+=node_modules/**
