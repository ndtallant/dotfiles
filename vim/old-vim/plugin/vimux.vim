" My Settings for Vimux

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
