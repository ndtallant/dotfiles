"Piping 
nnoremap <C-\> A %>%<Esc>
vnoremap <C-\> :norm A %>%<Esc>
inoremap <C-\> %>%<Esc>o

"Vimux
nnoremap <leader>tr :call VimuxRunCommand("R")<CR>
nnoremap <leader>s :call VimuxRunCommand("source('" . expand("%") . "')")<CR>

function! VimuxCurrentLine()
  let l:command = getline(".")
  call VimuxRunCommand(l:command)
endfunction

nnoremap <leader>r :call VimuxCurrentLine()<CR>
