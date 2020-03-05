"Piping 
nnoremap <C-\> A %>%<Esc>
vnoremap <C-\> :norm A %>%<Esc>
inoremap <C-\> %>%<Esc>o

"Vimux Setup and Source
nnoremap <silent><leader>tr :call VimuxRunCommand("R")<CR>
nnoremap <silent><leader>s :call VimuxRunCommand("source('" . expand("%") . "')")<CR>

" Run a line.
function! VimuxCurrentLine()
  let l:command = getline(".")
  call VimuxRunCommand(l:command)
endfunction

nnoremap <silent><leader>r :call VimuxCurrentLine()<CR>

" Run a selected chunk.
function! VimuxSelection()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

vnoremap <silent><leader>r "vy :call VimuxSelection()<CR>

" Knit an Rmd file.
nnoremap <silent><leader>k :call VimuxRunCommand("rmarkdown::render('" . expand("%") . "')")<CR>
