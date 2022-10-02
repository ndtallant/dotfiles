" Settings for scrooloose/nerdtree plugin
let NERDTreeIgnore=['\.pyc$', '\~$', '__pycache__$', '.DS_Store$']
map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
