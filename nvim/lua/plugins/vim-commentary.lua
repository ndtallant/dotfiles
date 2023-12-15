return {
	"tpope/vim-commentary",
	config = function()
		nmap("<C-c>", "<Plug>CommentaryLine")
		vmap("<C-c>", "<Plug>Commentary")
	end,
}
