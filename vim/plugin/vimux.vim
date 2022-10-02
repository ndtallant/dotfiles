" My Settings for Vimux

" Run a line.
function! VimuxCurrentLine()
  let l:command = getline(".")
  call VimuxRunCommand(l:command)
endfunction

nnoremap <silent><leader>tr :call VimuxCurrentLine()<CR>

" Run a selected chunk.
function! VimuxSelection()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

vnoremap <silent><leader>tr "vy :call VimuxSelection()<CR>
