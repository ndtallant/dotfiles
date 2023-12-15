vim.cmd("source ~/.vimrc")

function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
	map("n", shortcut, command)
end

function vmap(shortcut, command)
	map("v", shortcut, command)
end

function imap(shortcut, command)
	map("i", shortcut, command)
end

-- Load lazy.nvim plugin manager, typically in .local/share/nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- This will load all files in lua/plugins
-- so long as they return a table.
require("lazy").setup("plugins")
