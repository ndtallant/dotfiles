return {
  "vim-test/vim-test",
  config = function()
    nmap("<leader>tt", ":TestNearest<Enter>")
    nmap("<leader>tf", ":TestFile<Enter>")
    nmap("<leader>tc", ":TestClass<Enter>")
    nmap("<leader>tl", ":TestLast<Enter>")
    nmap("<leader>lt", ":TestVisit<Enter>")
    vim.cmd "let test#strategy = 'neovim'"
    -- vim.cmd("let g:test#neovim#start_normal = 1")
    -- vim.cmd "let g:test#python#pytest#options = '-v'"
    -- vim.cmd "let g:test#python#djangotest#executable = 'bash -c make test path='"
    -- vim.cmd "let $DJANGO_TEST_ARGS='--keepdb --verbosity=2'"
    -- --
    vim.cmd "let g:test#python#djangotest#executable = 'test_for_nvim_tq'"
    -- vim.cmd [[
    -- let g:test#python#djangotest#executable = 'make test'
    -- let g:test#python#djangotest#options = 'path='
    -- ]]
    vim.cmd "let g:test#golang#gotest#options = '-v'"
  end,
}
