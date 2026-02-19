-- Runs system MyPy on given path and
-- opens a quickfix list if there are errors
vim.api.nvim_create_user_command("MyPy", function(opts)
  vim.cmd(string.format("cexpr system('mypy %s')", opts.fargs[1]))
  vim.cmd "cw"
end, { nargs = 1 })
