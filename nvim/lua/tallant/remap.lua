local nnoremap = require("tallant.keymap").nnoremap
local inoremap = require("tallant.keymap").inoremap
local vnoremap = require("tallant.keymap").vnoremap

nnoremap("<leader>rw", "<cmd>Ex<CR>")
inoremap("kj", "<Esc>")

-- Split navigations
nnoremap("<C-J>", "<C-W><C-J>")
nnoremap("<C-K>", "<C-W><C-K>")
nnoremap("<C-L>", "<C-W><C-L>")
nnoremap("<C-H>", "<C-W><C-H>")

-- Replace single quote with double quote
nnoremap("''", ":s/'/\"/g <C-M>")
vnoremap("''", ":s/'/\"/g <C-M>")

-- Folding 
nnoremap("<leader>f", "za")

-- Underline current line
nnoremap("<leader>-", "yypv$r-<esc>")
