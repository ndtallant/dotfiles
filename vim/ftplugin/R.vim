"Piping 
nnoremap <C-\> A %>%<Esc>
vnoremap <C-\> :norm A %>%<Esc>
inoremap <C-\> %>%<Esc>o

"Vimux - Open R, source an R file, and Knit an Rmd
nnoremap <silent><leader>tr :call VimuxRunCommand("R")<CR>
nnoremap <silent><leader>s :call VimuxRunCommand("source('" . expand("%") . "')")<CR>
nnoremap <silent><leader>k :call VimuxRunCommand("rmarkdown::render('" . expand("%") . "')")<CR>
