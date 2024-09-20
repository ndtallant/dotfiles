" Essential
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap kj <Esc> 
tnoremap kj <C-\><C-n>
let mapleader=" "
set clipboard=unnamed

" netRW is life
nnoremap <leader>rw <cmd>Ex<CR>

" Edit and source .vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"defaults for indentation (spaces)
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autowrite
set mouse=a
set nocompatible


" Replace single quote with double quote
nnoremap '' :s/'/"/g <C-M>
vnoremap '' :s/'/"/g <C-M>

" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Paste over a visual selection by using the null buffer
vnoremap <leader>p "_dP

" Delete without cutting to the default buffer
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Quote words
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap <leader>` viw<esc>a`<esc>bi`<esc>lel

" Wrap in brackets
nnoremap <leader>] 0i[<C-c>A]<C-c>
nnoremap <leader>) 0i(<C-c>A)<C-c>
nnoremap <leader>} 0i{<C-c>A}<C-c>

" Underline current line
nnoremap <leader>- yypv$r-<esc>

" Flip content around an =
nnoremap <leader>= :s/\([^=]*\)\s\+=\s\+\([^;]*\)/\2 = \1


" Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>nt :tabnew<cr>
nnoremap <leader><Tab> gt
nnoremap <leader><S-Tab> gT

" Ctl bracket to move through buffers
nnoremap <C-[> :bp<cr>
nnoremap <C-]> :bn<cr>

" Split navigations
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show the line number
set number

" Highlight the line number we're on
set cursorline
set cursorlineopt=number

" Don't show sign/diagnostic column
set signcolumn=no

" Enable syntax highlighting
syntax enable

" Set background color
set background=dark

" scrolloff (lines at top or bottom before scroll)
set so=7


" => Reading file types, formats, and data
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Unix as the standard file type
set fileformat=unix
set ffs=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Don't use vim to manage backups
set nobackup
set nowb
set noswapfile

" => Vim User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on the Wild menu
set wildmenu

" Always show current position
set ruler

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results, and press enter to leave search and remove highlight
set hlsearch
nnoremap <silent> <CR> :noh<CR><CR>

" Make search act like search in modern browsers
set incsearch

" => Performance and behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn magic on for regular expressions 
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Don't show key presses in the bottom right
set noshowcmd

set ofu=syntaxcomplete#Complete


" Enable smart auto indent and line wrapping
set ai
set si
set wrap

" Keep text selected on indent
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <Tab> >>
nnoremap <silent> <S-Tab> <<

" Spellcheck markdown files
:autocmd FileType markdown set spell

iabbrev adn and
iabbrev dfe def
